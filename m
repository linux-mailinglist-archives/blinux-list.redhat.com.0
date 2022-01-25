Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 25D4E49BDC8
	for <lists+blinux-list@lfdr.de>; Tue, 25 Jan 2022 22:18:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643145515;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=eV2jXarH5LDasUx6LqGx1ziwlDErYYVyqiDkUrwoVVA=;
	b=Z6IjPQ5gpX5wF2s0nDTwyHYVkYup/LZFUu1uEplebJaLvkRbi6hbxobE+UVbo+FwPjSJk/
	8CtjuLu/EKkfVlAmrVGOPd2YvmSP33I66ea6nyv8Vc4Qnu80FbIoGiO2Km4h6qzQoK+9mV
	nulwtofq42Psi8tv2izwxOZdzY1Y/Zw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-83-g36_IsYTMc2RknwK2gfV2w-1; Tue, 25 Jan 2022 16:18:33 -0500
X-MC-Unique: g36_IsYTMc2RknwK2gfV2w-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D952C1006AA0;
	Tue, 25 Jan 2022 21:18:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 704534E2B0;
	Tue, 25 Jan 2022 21:18:27 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D330C4BB7C;
	Tue, 25 Jan 2022 21:18:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20PLIDMG029493 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 25 Jan 2022 16:18:13 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 565301454554; Tue, 25 Jan 2022 21:18:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 525481454539
	for <blinux-list@redhat.com>; Tue, 25 Jan 2022 21:18:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 32916185A7B2
	for <blinux-list@redhat.com>; Tue, 25 Jan 2022 21:18:13 +0000 (UTC)
Received: from sonic305-3.consmr.mail.bf2.yahoo.com
	(sonic305-3.consmr.mail.bf2.yahoo.com [74.6.133.42]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-663-2TCmuIFbPHy_NHOq7fLZzA-1; Tue, 25 Jan 2022 16:18:11 -0500
X-MC-Unique: 2TCmuIFbPHy_NHOq7fLZzA-1
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1643145490; bh=XGQKVb18ifM+k82MsBjtf9GhJj5YQJRzWcQ/eijCAV4=;
	h=X-Sonic-MF:From:To:Subject:Date:From:Subject;
	b=gala9JmPjAWiB1rLuQt6YqOFmte15gHjJ+tS/nBWJF2888c+hT94O0asx5RRbR35jN3Pw61ySSKLrMF7plhXqgxs8DETgZ6h4mp+YgPitDrOHnF9Dt9/Hv9ekFz9T+tkCcuzjl06FFNjEfvCtJvVc3NZvZuX7swa9939046PwJ/l3Fu8d1QXrQq0z3Et4YDPvyNpKHyfcx9uVOEKIamM7f4QEIk3Ob/K+513K15SouKPnE18W0N/bpctuZLUErxwOoH8YnopLtX5ipVQAR/VY8aZqOlpmN98NW87Oc4CUGrDufryd9rR1Q3l4ip/QljYMPCvjF4jXKVZUYtO5QlnaQ==
X-YMail-OSG: 7LC9PToVM1lxDgU2Zgcu91R9d6nStCW0klvt0GIy4QZX_mM47HJtq59ZShcZiPh
	R2PSiazWH3qk8Qs6VbrbIBtt2IwyOiu7Sxbbu9128dLXlnHBIVN1sPHSp4wThXisvxy4aEc39tlz
	iv6SxlJgQi_lLm9J_Jg9Zk_oXkQiuceJ6AXuHbexUxcJ9f.cu43YHPSIPKRhOKIjTfDZr2dbX1w4
	qIMLXakuRBOkjo96Nw6zaiPoTFha38Q.5v0GmmNd9NId0_cqc5.OfhrqH0oUmI0T8ZqLGLbdPhOA
	RqFy7uhkbKoG1YjFL_e1KOr2YDqQatkd__msu34HTReNuO7ooooc2WWzGuyhgm8g658uXsZ.YebN
	WPBCK9EAYNi8op7eIwOo.Ffb9KCjHs1ZwUFXA3YFHDwPsyzaV2uHj2kjOZx6wYDvRNuiOrfB_8Ms
	1F38uf3wRIdgAQyvu9HFGmS11BYbEsyVQt_ZaW7hhQQUy3BmEg40N_rnauNXAWAut7PSQymdd8gW
	yvTeYo_HmBOR9CSv9vIPmNt5JeisBd8bMjyA5LU1_.TcdYVPRDaJF3ilT2L.1V12vTSpgTal7s4z
	bIBpObdsA.jN89R1MM.PeG4q53cNCynX3sgGY1dCaVzloUNjEy7o7mcc8EG7jiTDbPDI8FmmIF1f
	Bq4WFUB6IEFbsCW8vww7PElltHsIiWFIPfcFegFn5ssa1vXJLimSGnhlwA.oME5o_bmOiL4jYsX1
	KnBNMkAHP73IbQei45hR.YeL5zjI81LG9adGZFFydmQPKoliKDmvnq96CrJRAVrL0t13y16guEmI
	Ns7Y0ln3MeKECJlyD6UxRESydXQm0FhVBGCr5uCDBLnujsdx6gwSPWo6uaYHe0aJSA.fDg5b5O2t
	lby3GfmVYDpdZXVvrjMKy.ThnFwNbCKDA.4pzcT6SZQg9byxvRaJN7RJHwm5Jo11hiNptYH06UKX
	pPSReQnYMdNZwL1I6SCgeGUu1YdNyYsXSEPSyOwj82CdfEaLlyZ1bFNFGuDfdW1rDk6CJICy8rpa
	r50h8USlOhzqwRmPJggdb0Pl0gLdptjBWDGu9UbhLozMSmSb231iUSwBBoVMlR8L88ek_OW2VNqx
	JLwp3UBi6b6a.XOama_Y_4ulN_inmH9ttdovrMeI5gNMZRE2ps7DvTOv7VFSXNcKx6pBrz5ISGgm
	.R9F2UVy7K9KpLXW.Isws3qHzqw1ctmVGnNTmEsRb9XTBfqlGeQLlZRnFLsVTJ2bPxg56bt3INPv
	mWb5kJ9MmOVV.iN2LoOLSVKkHaGTmXfzdTfR5RnqlGmRFJpPIRZkKBWw8qzXd8dau7VemjsUOoSP
	2DFh5yNonzHusGSEIPK1Uu2NZyyg8JQZRPc8VBp5uCSr7wAfDBPvIJBzAJfrJxrq4zoZiZFP1RD7
	0CslRo8NAZYuHbANqdBnt7IL8s_m0FTBkQnXn8VEZ3xtBG8k0.HXeucfUGhkJPXapA0uql8n2MTH
	PfpaASgu3dqylGNCQOLAPb1BF4bML1mTpNG7oC6vP1yM.cdezf1PO_s4u_qOCntw1a9r7wyXze5m
	qlRHB9jucZycZ0vLxwzZf3WBAjOmnR5W_YHI8eN4BanFZ35dT10d3N586QB5s22h.6jgfYq5BoiE
	jH5eSt81tKHmpQCS8Y_3uzx2yGRpj8hXQZNmrea6K03Gk8aZvKrsBHbW1LmOR2xj0qP4kjsBi_t.
	n1mSs_UGEbNgSE2FW403YeloQgD2KQ88w_qsrvQxeYjd02oyZIfySSz.noF5uUobL3CA26uIR6Md
	sQTbkAJo4RI_txYzJQFMPsPHPEB9L92iVrEnPJDkubXQ4ASnE2eonIUO7GPV88I1DMeWu0Dhm8wN
	1jteTp5EZ1PSwzrpO1C980rBUelZGjOU.ZULY45GaCff.wN3XhqOLiBgYxR9XIk5F6G0IaRM5JJ5
	Pku8Tqh90.AfpvS4onESNMTVH1OT5ua_xewL8IJ67A8DO.SbAPmQr8mu7QPK_XBpw0TcboFq3wo_
	3hir3y2VvzgRNilYFDP5AAxLb0rNnkimtJaQ0TI_tjdU5pbaQJ7cpqFxQqlPXGiVKn5NEqJCE0nK
	3PQ6kwqqLQWWhsJ.S4Ec2TKh8_XD.GL7IZTwJ9f9DCQEjH2Op3yWTePYFSoYW_QQ_Hah_Bg--
X-Sonic-MF: <ishechinyoka@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic305.consmr.mail.bf2.yahoo.com with HTTP;
	Tue, 25 Jan 2022 21:18:10 +0000
Received: by kubenode519.mail-prod1.omega.gq1.yahoo.com (VZM Hermes SMTP
	Server) with ESMTPA ID ca959d39000ad4d710e5400083e82a6c; 
	Tue, 25 Jan 2022 21:18:08 +0000 (UTC)
References: <47701df7-e208-a9dc-b03d-2aa6d6a74b03@gmail.com>
	<64e01cbd-199d-cff7-020a-4e8b3ade7a19@slint.fr>
	<e0e9740-3cd8-37ee-936-575e53672dc2@panix.com>
	<ad8c5f38-8730-f5e2-bb6e-812803897cc9@gmail.com>
	<b2a26ce7-cd2c-93c1-bf4-aae041f468fa@panix.com>
	<87zgnjodji.fsf@yahoo.com>
	<748d48e0-526a-937e-c2a8-2ef4775c132f@panix.com>
	<4283a621-51ba-a18c-ea02-85c58d9aa085@gmail.com>
User-agent: mu4e 1.7.5; emacs 27.2
To: blinux-list@redhat.com
Subject: Re: Configuring ratpoison
Date: Tue, 25 Jan 2022 23:14:45 +0200
In-reply-to: <4283a621-51ba-a18c-ea02-85c58d9aa085@gmail.com>
Message-ID: <87lez37bwl.fsf@yahoo.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 20PLIDMG029493
X-loop: blinux-list@redhat.com
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

ClRoaXMgaXMgYSBnb29kIGFwcGxpY2F0aW9uOiB0aG91Z2ggIEkgY291bGQgbm90IGhhdmUgbXkg
QUxULUYxIG5vcgpBbHQtRjMgdG8gd29yay4gSSBnb3QgYXJvdW5kIHRoYXQgbGltaXRhdGlvbiBi
eSBqdXN0IGJpbmRpbmcgbXkKZnJlcXVlbnRseSB1c2VkIGFwcGxpY2F0aW9ucyB3aXRoIGJpbmQg
a2V5IGV4ZWMgcGF0aCBhbmQgSSB3YXMgCmRvbmUuCgpUaGFua3MgU3Rvcm0gZm9yIHRoaXMgYWRq
dXN0bWVudC4gSSBhbSBvbiBBcmNoLiAgSSB0aGluayB0aGlzIGlzIApub3cgbXkKcHJpbWFyeSB3
aW5kb3cgbWFuYWdlciBmb3IgdGhpcyB5ZWFyLgoKCgpPbiBUdWUsIEphbiAyNSwgMjAyMiBhdCAw
NzoyOCAgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiAKPGJsaW51eC1saXN0QHJl
ZGhhdC5jb20+IHdyb3RlOgo+IEN1cmlvdXNseSBTdHJ5Y2huaW5lIGZvciBtZSwgZG9lc24ndCBz
ZWVtIHRvIGxpa2UgTWludCBob3dldmVyLCAKPiBhdAo+IGxlYXN0IGluIG15IHRlc3Qgc2V0dXAu
IEFyY2ggd29ya3MgcGVyZmVjdGx5IHdlbGwgYWZ0ZXIgZ29pbmcgCj4gdGhyb3VnaAo+IG15IHNl
dHRpbmcgdGhpbmdzIHVwIHJvdXRpbmUgaG93ZXZlcgo+Cj4gQWx0IEYxIHdvcmtzIGZpbmUgaGVy
ZSBldmVuIGlmIEkgY29tbWVudCBvdXQgdGhlIG90aGVyIG1lbnVzCj4KPiBMaW51eCBmb3IgYmxp
bmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+PiBJIGdvdCBhbHQtZjEgd29ya2luZyB3aXRo
IHN0cnljaG5pbmUgYW5kIHJhdHBvaXNvbiBvbiBzbGludCBhbmQgCj4+IGRpZG4ndAo+PiBpbnN0
YWxsIHFlbXUuCj4+Cj4+Cj4+IE9uIFR1ZSwgMjUgSmFuIDIwMjIsIExpbnV4IGZvciBibGluZCBn
ZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+Cj4+PiBIaSwKPj4+Cj4+PiBJIGluc3RhbGxlZCBS
YXRwb2lzb24gYWxvbmcgd2l0aCB0aGUgU3RyeWNobmluZSBhbmQgdHJpZWQgdG8gCj4+PiBmb2xs
b3cgdGhlCj4+PiBndWlkZWxpbmVzLiBXaGlsZSB0aGlzIHNlZW1zIHRvIGJlIGEgZ3JlYXQgb2Zm
ZXJpbmcsIEkgc2VlbSB0byAKPj4+IGhhdmUKPj4+IGlzc3VlcyB3aXRoIHRoZSBBTFQrRjEgbWVu
dTogaXQgZG9lcyBub3Qgc3RhcnQgdGhlIG1haW4gbWVudS4gCj4+PiBJIHJlbW92ZWQKPj4+IHRo
ZSBxZW11LmRlc2t0b3AgZnJvbSB0aGUgL3Vzci9zaGFyZS9hcHBsaWNhdGlvbnMsIGJ1dCBzdGls
bCAKPj4+IE9yY2EgZG9lcwo+Pj4gbm90IGFubm91bmNlIHRoZSBtZW51Lgo+Pj4KPj4+IEFueSBo
aW50cyBvbiBob3cgZWxzZSB0byBwcm9jZWVkPwo+Pj4KPj4+Cj4+PiBPbiBNb24sIEphbiAyNCwg
MjAyMiBhdCAwODoyMiAgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgCj4+PiBkaXNjdXNzaW9uCj4+
PiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4+Pj4gVGhhbmtzLCBJIGFsbW9zdCBn
b3QgdGhhdCBjb3JyZWN0LiAgSSdsbCByZW1vdmUgdGhlIAo+Pj4+IC5yYXRwb2lzb25yYyBmaWxl
IGFuZAo+Pj4+IHJ1biB0aGUgc2V0dXAuc2ggc2NyaXB0IGFnYWluLgo+Pj4+Cj4+Pj4KPj4+PiBP
biBNb24sIDI0IEphbiAyMDIyLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIAo+
Pj4+IHdyb3RlOgo+Pj4+Cj4+Pj4+IFJpZ2h0LiBJdCBzaG91bGQgZ28gbGlrZSB0aGlzOgo+Pj4+
Pgo+Pj4+PiBTZWxlY3QgeW91ciBSYXRwb2lzb24ga2V5LiBJdCBjb21lcyB1cCB3aXRoIGEgYnVu
Y2ggb2YgCj4+Pj4+IG9wdGlvbnMuIEMtIGlzCj4+Pj4+IGNvbnRyb2wsCj4+Pj4+IE0gaXMgZWl0
aGVyIGFsdCBvciBzaGlmdAo+Pj4+Pgo+Pj4+PiBTdXBlcl9MIGlzIHdoYXQgSSBnbyBmb3IsIGxl
ZnQgU3VwZXIga2V5Cj4+Pj4+IFRoZW4gaWYgeW91IGdvdCBtdWx0aXBsZSBicm93c2VycywgdGV4
dCBlZGl0b3JzIGFuZCBzbyBvbiAKPj4+Pj4gaXQnbGwgYXNrIHlvdQo+Pj4+PiB3aGljaAo+Pj4+
PiBvbmUsIHRoZW4gaXQnbGwgYXNrIGlmIHlvdSB3YW50IFJhdHBvaXNvbiB0byBtYWtlIHNvdW5k
cywgCj4+Pj4+IGhvdyBtYW55Cj4+Pj4+IHdvcmtzcGFjZXMsCj4+Pj4+IGFuZCBpZiB5b3Ugd2Fu
dCBicmFpbGxlLCB0aGVuIGFmdGVyIHRoYXQgeW91J2xsIGhhdmUgYSAKPj4+Pj4gLnJhdHBvaXNv
bnJjIGZpbGUKPj4+Pj4KPj4+Pj4gTmV4dCwgZWl0aGVyIGJhY2sgdXAgeW91ciBleGlzdGluZyB4
aW5pdHJjIHNvbWV3aGVyZSBzYWZlLCAKPj4+Pj4gb3IgZG8gLi9zZXR1cC5zaAo+Pj4+PiAteAo+
Pj4+PiB0byBtYWtlIGEgbmV3IC54aW5pdHJjIHdpdGggUmF0cG9pc29uIHNldHRpbmdzIHRoZW4g
ZG8gCj4+Pj4+IHN0YXJ0eAo+Pj4+Pgo+Pj4+PiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNj
dXNzaW9uIHdyb3RlOgo+Pj4+Pj4gSSBnb3QgcmF0cG9pc29uIGFuZCBzdHJ5Y2huaW5lIGluc3Rh
bGxlZCBhbmQgcmFuIHRoZSAKPj4+Pj4+IHNldHVwLnNoIHNjcmlwdCBpbgo+Pj4+Pj4gc3RyeWNo
bmluZS4gIFRoZSBmaXJzdCBzY3JlZW4gb2Ygb3B0aW9ucyBJIGRpZG4ndCAKPj4+Pj4+IHVuZGVy
c3RhbmQgc28gaGl0IGVudGVyCj4+Pj4+PiBvbiB0aGF0IHNjcmVlbiB3aXRob3V0IHNlbGVjdGlu
ZyBhbnl0aGluZy4gIElmIEkgaGFkIHRvIAo+Pj4+Pj4gZ3Vlc3MsIEknZCBndWVzcwo+Pj4+Pj4g
dGhhdCB3YXMgYSBsYW5ndWFnZSBzZWxlY3Rpb24gc2NyZWVuIGJ1dCBlbmdsaXNoIHNvIGZhciBh
cyAKPj4+Pj4+IEkgY291bGQgdGVsbAo+Pj4+Pj4gd2Fzbid0IG9uIHRoYXQgc2NyZWVuLgo+Pj4+
Pj4KPj4+Pj4+Cj4+Pj4+PiBPbiBTdW4sIDIzIEphbiAyMDIyLCBMaW51eCBmb3IgYmxpbmQgZ2Vu
ZXJhbCBkaXNjdXNzaW9uIAo+Pj4+Pj4gd3JvdGU6Cj4+Pj4+Pgo+Pj4+Pj4+IEhpIEJyYW5kdCwK
Pj4+Pj4+Pgo+Pj4+Pj4+IEkgZm9yd2FyZGVkIHlvdXIgcXVlc3Rpb24gdG8gbXkgZnJpZW5kIFN0
b3JtIERyYWdvbiBvbiBJUkMgCj4+Pj4+Pj4gYW5kIGhlcmUgaGlzCj4+Pj4+Pj4gaGlzCj4+Pj4+
Pj4gYW5zd2VyOgo+Pj4+Pj4+ICgxNjoyNDoyMCkgc3Rvcm06IERpZGllclNwYWllcjoKPj4+Pj4+
PiBodHRwczovL2dpdC4ybWIuY29kZXMvfnN0b3JtZHJhZ29uMjk3Ni9zdHJ5Y2huaW5lCj4+Pj4+
Pj4gKDE2OjI1OjA5KSBzdG9ybTogVGhhdCdzIG15IHNjcmlwdCB0aGF0IGNyZWF0ZXMgYSAKPj4+
Pj4+PiAucmF0cG9pc29ucmMuIEl0J3MKPj4+Pj4+PiB3aGF0IEkKPj4+Pj4+PiB1c2UKPj4+Pj4+
PiBldmVyeSBkYXkgZm9yIG15IFggc2Vzc2lvbi4KPj4+Pj4+Pgo+Pj4+Pj4+IENoZWVycywKPj4+
Pj4+PiBEaWRpZXIKPj4+Pj4+PiAtLQo+Pj4+Pj4+IERpZGllciBTcGFpZXIKPj4+Pj4+PiBTbGlu
dCBtYWludGFpbmVyCj4+Pj4+Pj4KPj4+Pj4+PiBMZSAyMy8wMS8yMDIyID8gMTQ6NDAsIExpbnV4
IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gCj4+Pj4+Pj4gYSA/Y3JpdMKgOgo+Pj4+Pj4+
PiBIaSBhbGwuCj4+Pj4+Pj4+Cj4+Pj4+Pj4+Cj4+Pj4+Pj4+IEkgaW5zdGFsbGVkIHJhdHBvaXNv
biBvbiBteSBTbGludCBzeXN0ZW0sIGFuZCBkb24ndCBoYXZlIAo+Pj4+Pj4+PiBlaXRoZXIKPj4+
Pj4+Pj4gfi8ucmF0cG9pc29ucmMKPj4+Pj4+Pj4gb3IgL2V0Yy9yYXRwb2lzb24uCj4+Pj4+Pj4+
Cj4+Pj4+Pj4+Cj4+Pj4+Pj4+IFdoZXJlIGNhbiBJIGdldCBhIGdvb2QgcmF0cG9pc29uIGNvbmZp
ZyBmaWxlPyBEb2VzIG9uZSBvZiAKPj4+Pj4+Pj4gdGhlIE9yY2EKPj4+Pj4+Pj4gdXNlcnMsCj4+
Pj4+Pj4+IEknZAo+Pj4+Pj4+PiBhc3N1bWUgdGhhdCB3b3VsZCBiZSBtb3N0IG9mIHVzLCBoYXZl
IG9uZSBvbiBnaXRodWIgb3IgCj4+Pj4+Pj4+IHNvbWV3YXJlPwo+Pj4+Pj4+Pgo+Pj4+Pj4+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+Pj4gQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+
Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxp
c3QKPj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+Pj4+IEJsaW51eC1saXN0QHJlZGhh
dC5jb20KPj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QKPj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+IEJsaW51eC1saXN0
QHJlZGhhdC5jb20KPj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdAo+Pj4+Pgo+Pj4+Cj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+
PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20v
bWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4KPj4+Cj4+Cj4+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcg
bGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgo+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4g
QmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCgotLSAKR29vZCBwZW9wbGUgZG8gbm90IG5lZWQgbGF3
cyB0byB0ZWxsIHRoZW0gdG8gYWN0IHJlc3BvbnNpYmx5LCAKd2hpbGUgYmFkIHBlb3BsZSB3aWxs
IGZpbmQgYSB3YXkgYXJvdW5kIHRoZSBsYXdzLgotIFBsYXRvICg0MjctMzQ3IEIuQy4pCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3Qg
bWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhh
dC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

