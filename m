Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 5F729370352
	for <lists+blinux-list@lfdr.de>; Sat,  1 May 2021 00:09:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1619820578;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=M96Zzw3ccFGR7Ak8kN4aIdNuEij+R8LJBRGlcCx48sc=;
	b=h6MPVIT5YETY3hg+E+JZ/ODj2+02NJt6RAsdHUbvnT06RVfLJI/UXSb0T6YiH7V9C+N22x
	oHNJ01LHJjrOyb7k+kKi0iK9HVn4h9RkGARo6jE0qpHoB6YF/x8kuW95z+E4LQ8X3/MCsZ
	pztOQdRgaO+ed5UdPN3q153VSbbWnF8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-119-134GYFToO2WudoSkT_vX5w-1; Fri, 30 Apr 2021 18:09:35 -0400
X-MC-Unique: 134GYFToO2WudoSkT_vX5w-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 325B110066E5;
	Fri, 30 Apr 2021 22:09:31 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A72315C1C4;
	Fri, 30 Apr 2021 22:09:30 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B0BA355345;
	Fri, 30 Apr 2021 22:09:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13UM9JdJ001586 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 30 Apr 2021 18:09:19 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 0A1042039D92; Fri, 30 Apr 2021 22:09:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 04E462039D99
	for <blinux-list@redhat.com>; Fri, 30 Apr 2021 22:09:16 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 993DD802E5F
	for <blinux-list@redhat.com>; Fri, 30 Apr 2021 22:09:16 +0000 (UTC)
Received: from sonic312-24.consmr.mail.ne1.yahoo.com
	(sonic312-24.consmr.mail.ne1.yahoo.com [66.163.191.205]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-540-8YkyG6lPO9-qRXGLwftvHw-1;
	Fri, 30 Apr 2021 18:09:13 -0400
X-MC-Unique: 8YkyG6lPO9-qRXGLwftvHw-1
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1619820552; bh=kP0O+sZjAhuPdaZ7wo2Ufaz8Nw5zDA4NAhOL1gIFV50=;
	h=X-Sonic-MF:From:Subject:Date:To:From:Subject;
	b=qqSodZl9q5wCcKsnzpM4QKFmqdX9WN/pgIPRtSIeISOwNIfn0avzx1o8vP/rojHewqK7NcMsUqIQ8ixcxTC5pWNXqrjDmqkmQ/JQYNnjgEklW8O/Raj86+0H8+nOCC1sT6Y6gMxfztMyN0Iv05OXvhpH7Vju5YhroKbw7XswGUPy/m7N6cDq8sJR9ekhaeXe+Kc5Ml1Rp+y1BBMWRB6NAeZzh5XoafRLvkFxsVC0klIolHtdmxApumt07OjEq2LXmg7YphFyxdPtiOQzXb0cXpS3yKr9NO3QmApwVTMhv1XMM+bTbDTFHFTLGHYYRvb7DH6pOd7VrBpYT++M/yLWkA==
X-YMail-OSG: LrCoVWUVM1kwhMoZiY5L7I1VUFRhBMPT1q00FglD5bzVSyGn7X_JWTLJttRur2F
	EOZP.Fm3h2LnvwBanFiWKV7d6FEhhBDkyj5zqQJrms2VtoozodOnxiG20Pik.2ClvOjj2Jo8OZVn
	W1R4OjNEKYKkzBmrTWon2JgGOuA5xF3Wbzj2b.KM25kBvfLwlxudZjwYlniJPRym8ADlxkNm9AhP
	5Xe7KrZUEfIsw8VJYD2F_Pv1gMdMdHfDZfK9v9Rs9DlyNnXYrlb99EQtHda_ifubtPyR0AmMX1CK
	nzNjY77z2lIPkiOSLpj0H6zU5Gia03sXivbOtWto53CTPZMIxJcaxeA.utGEOKm_5D6FCxKf0qCe
	eMl.7S8NKlOVFsbJTJCu_kTe_iUu58i04R5.ZgN6Kzw77CbW2FWGtACPDaEodWvBbT7Bga0QdhiT
	PN8slBotpNsPIGVm6FUnOJctkiQ1r83f_VjIqAg1JR2RA78X8SzoEk1vFTbvtTLq9FVMvbDEtLnd
	DpKmStDk8PmV_DdVvV4fXOy4xyj5E3ccKFDk85TbycEKkotUNmrMuQi70jUjow5k4EKc49lc0g_.
	zE7S26_LkuP6P_Trpb6H5Zuu8QJ.9pmOYGk398ED36LQfir4H2w5iwadDFSIJum22t8VNTDnyJWd
	N2EP.lFwzxDeWQkwLQS9ugoJAFtIO.HXQ_NOQ_DTBt1tt5sbfWyuLnr0.kUaGVyNQvIRHkiSZNZO
	YrrkYpL.2cCMGAsBkzYN6.SPgaU5p0.t6MeH4SxCR3c10lCWuSFEQlYUK8kcB0DuCqXA0RpWRb70
	fMRAk9tLY8WgTev4yKCLu1VOI9yUJx19kLMj7SNJT81xXzud5NgxtIIEFEqroN1tOKH1PPLooEf6
	sq28X1Z.qwHCD62YA.ChNb_m6lQAly8obucjxJ8TfbxMdDKDnh8nqtLcqiQH8B8_U9ZYYqpSaPrQ
	ayqqofvydjqxr2qLldGqboln.qWGbyOgxx7mf7AMFjHAOZXLS5o4mg0PW7OpPpvBovSDEhXcS_OR
	nqNTB8GReiyaMFBDE3jo8e0hXQzACjbdFEnE3qS5MtvD823Ckgmy8Nip6LNOD3GtnP5njq.W41Pq
	dvPVqPdGtWN6_bdeWTSWLsubDWHlyNrF9gD.s1S43tTtVUv05Bm20wmdK2TIEbZg3XpMX3ldXGXJ
	EsTrOAzwdE6fpatDI..lGa6iSOoyyKb.CsRKCPtlvGd9qzEBpeSF2rUxUi5pPX45_J9.z2nFiMXh
	4fWlssc43HxFoAjWBw6wo3wazuWbBVjZoKtqFS3T8uwQiw2C9KlweUdrRBYR.UgfWLXs9PD4pppe
	2YhlMik.uX.bRtY1oc0KRRLa9aVeiDN8ZPqFbLUPTy8N1UI2jz_kAVlu718SrY9dEkBVuZKTnrnM
	NwtQRA6cqchDjJ0ZfkGjR0OyChbrib3HRFCMu_QVTaeq0Ni7uckypjdbFOLrISxrHMd_kHPRwivn
	L0EBg3l9MWyjt.1ueKV0p4KC4RoHnVrfyF3dXB3Wq6B6Nwu6RjI6he_rdy1p1OMvLXJ8ebJ6_HJN
	V6NbEg_EXTG_PjlfPsFoC5.OXAQF.SXVIOZewABCITwDcXngfGeapM7lOAzfc8OjipUn37eYpM_p
	RayW0CEDl9rDcM73b6mpcKi_B7eRwDybCJifwDgFfpAB0lZOKgKvrVXCLW3F9DcTJMmuBKQ0F4iS
	_T3er2fGB.R8gZkMosvEWQrMrXeQ.2YoJ5NrHtjmDk1y_.TscvW6Vmzxtvrw1JY2Xph9m6kThJAP
	.ytb_kCD0ip3LLCEqAkbmWXmvmZGsG0URlFz.V73hkp0qUESHiUAyxaHXE3gZMD0KP9_xMBgFGs9
	yTIhbREPKUeF_VQuB2iCeSz8yzvNFbWuGVXfSKplT2dubMWSzeARZm5EyzMHLQU377cpWrwWqirQ
	zjDIaBbugDratbc3v9oA.H4f0..up1lvqhh9AP8fz2IIe6jYAXst2WF5Qj5QD3zJ8DJK3ivSlmzT
	CFJb7gPhyKPk6m5f9sp5kbMYBOAfl5Jrk3G8GkqgtcXWQphCB2bRFwqC5rzfiACkp0aPWHg.p_Q7
	2ZKGW13xZ8VVWV22.VP2A6E9VNTR6L8qOsbuxVK1uJR38RTvHAwbCB6fPnBc.xUa_ryHJg467ti.
	lhiScNxoDyiS0AiiuuHfMyghJFESkkPeOj80qHb1_T8nP4rAoNKsZp002g00aCAx8oZNtsy7tfeA
	GyWWJ9yuavEHZXK_2c9F9OuhVNkRuF5TN8Uw90oK8HkiX4qDVYoPiYOdu40P00ZOsaav9RLB.iLP
	JL0t7cXjaeYycKuw-
X-Sonic-MF: <jones.cee7@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic312.consmr.mail.ne1.yahoo.com with HTTP;
	Fri, 30 Apr 2021 22:09:12 +0000
Received: by kubenode514.mail-prod1.omega.bf1.yahoo.com (VZM Hermes SMTP
	Server) with ESMTPA ID eccb4c5ab088a940ce545c55bcf76f60; 
	Fri, 30 Apr 2021 22:09:07 +0000 (UTC)
Mime-Version: 1.0 (1.0)
Subject: Re: Best Distro for Blind
Date: Fri, 30 Apr 2021 18:09:02 -0400
Message-Id: <3BAC4A96-38E0-406A-B953-9ABEC697F9BF@yahoo.com>
References: <83f266d2-b046-11a3-f738-3a537a26cc86@gmail.com>
In-Reply-To: <83f266d2-b046-11a3-f738-3a537a26cc86@gmail.com>
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBhbHNvIHZlcnkgbXVjaCBzdWdnZXN0IFVidW50dSBNYXRlLgoK4oCcIE5ldmVyIGJlbmQgeW91
ciBoZWFkLiBBbHdheXMgaG9sZCBpdCBoaWdoLiBMb29rIHRoZSB3b3JsZCBzdHJhaWdodCBpbiB0
aGUgZXllLuKAnSAKfiBIZWxlbiBLZWxsZXIKCj4gT24gQXByIDMwLCAyMDIxLCBhdCA0OjUzIFBN
LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQu
Y29tPiB3cm90ZToKPiAKPiDvu79NYXR0aGV3Cj4gCj4gCj4gCj4gQXJlIHlvdSBsb29raW5nIGZv
ciBzb21ldGhpbmcgd2l0aGEgR1VJIGluc3RhbGxlcj8gSWYgc28sIFVidW50dSBtYXRlIHNob3Vs
ZCBiZSBnb29kLiAgQWxzbywgSSBhbSB1c2luZyBmZWRvcmEgbWF0ZSBzcGluIGFuZCBpcyB2ZXJ5
IGFjY2Vzc2luYmxlLiAgVGhlcmUgaXMgYWxzbyBhY2Nlc3NpYmxlIGFjY29jYW51dCB3aGljaCBp
cyBiYXNlZCBvbiB1YnVudHUgMjAuamQuICBBbHNvIGlmIHlvdSB3YW50IGEgdGV4dCBpbnN0YWxs
ZXIsIHNsaW50IGlzIGEgdmVyeSBnb29kIGNob2ljZS4gICBhbHNvIGRlYmlhbiBpcyBhbHNvIGdv
b2QuICBTbywgYXMgeW91IGNhbiBzZWUgdGhlcmUgYXJlIGEgZmV3IGdvb2QgY2hvaWNlcyBhdmFs
aWJsZS4KPiAKPiAKPiAKPiBIaSwKPiAKPiAKPiAKPiAKPj4gT24gNC8zMC8yMDIxIDE6MjAgUE0s
IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+IEhlbGxvLAo+PiAK
Pj4gCj4+IEkgYW0gYSB0b3RhbGx5IGJsaW5kIHBlcnNvbiBhbmQgYSBMT05HIHRpbWUgV2luZG93
cy9KYXdzL05WREEgdXNlci4gSSBhbSB3b25kZXJpbmcgd2hhdCB3b3VsZCBiZSBhIHJlY29tbWVu
ZGF0aW9uIGZvciB0aGUgYmVzdCBkaXN0cm8vR1VJIGVudmlyb25tZW50IHRvIGJlZ2luIHVzaW5n
PyAgSSB3b3VsZCBsb3ZlIHRvIGJlIGFibGUgdG8gbW92ZSBhd2F5IGZyb20gV2luZG93cyBhbmQg
dXNlIExpbnV4IGZ1bGwgdGltZSBmb3IgYnJvd3NpbmcsIGVtYWlsLCB3b3JkIHByb2Nlc3Npbmcg
YW5kIHNwcmVhZHNoZWV0cy4gSSBoYXZlIGEgVGhpbmtwYWQgWDIyMCB0aGF0IEkgY2FuIHVzZSBm
b3IgTGludXguIEFib3V0IDE1IHllYXJzIGFnbywgSSBwbGF5ZWQgYXJvdW5kIHdpdGggVmVudXgs
IGJ1dCB0aGF0IHByb2plY3Qgc2VlbXMgdG8gYmUgZG9ybWFudCBub3cuIEkgaGF2ZSBhIFBpIDNC
KyBydW5uaW5nIHNvbWUgaGFtIHJhZGlvIHNvZnR3YXJlIGFuZCBJIGhhdmUgdG8gU1NIIGludG8g
aXQgb2NjYXNpb25hbGx5IGFuZCBwZXJmb3JtIHNvbWUgY29tbWFuZCBsaW5lIHN0dWZmLiBGb3Ig
ZGFpbHkgdXNhZ2UsIEkgd2FudCBhIGZ1bGwgR1VJIGVudmlyb25tZW50Lgo+PiAKPj4gCj4+IFRo
YW5rcyBpbiBhZHZhbmNlIGZvciBhbnkgc3VnZ2VzdGlvbnMuCj4+IAo+PiAKPj4gSm9obgo+PiAK
Pj4gCj4+IAo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+
PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0
Cj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6
Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdApfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWls
aW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNv
bS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

