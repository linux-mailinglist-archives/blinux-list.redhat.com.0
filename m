Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id CCB023D2BD0
	for <lists+blinux-list@lfdr.de>; Thu, 22 Jul 2021 20:19:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626977952;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=pqa8+qv01A0afxqhUT1JSqwUxO2/GsrLmL/mmwwIr84=;
	b=arA1Pp23P8UCInx0uqjODm1DQm707CS/r7mPghV9tUeyteQhBy0bdn1qXUKyGimhHzAn8w
	LlbnpKKHohpRCOBCQPRHaqswESppLSpxEztQLqaaNJhmHLyZQlsZAdRxQZWzRwqcekOP7Y
	Ck8dz+s11Kz3B/jHGiXqVOFYFUulBnM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-397-R_EkU8oSPAe6lqFJCajznQ-1; Thu, 22 Jul 2021 14:19:11 -0400
X-MC-Unique: R_EkU8oSPAe6lqFJCajznQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3C54B8018A5;
	Thu, 22 Jul 2021 18:19:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A8A3B69CB6;
	Thu, 22 Jul 2021 18:19:05 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 227AC4BB7C;
	Thu, 22 Jul 2021 18:19:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16MIItuK007131 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 22 Jul 2021 14:18:55 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id EBCB3110E9B; Thu, 22 Jul 2021 18:18:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E5D0A110EB2
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 18:18:52 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 20CA289C7DB
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 18:18:52 +0000 (UTC)
Received: from sonic317-20.consmr.mail.gq1.yahoo.com
	(sonic317-20.consmr.mail.gq1.yahoo.com [98.137.66.146]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-419-LqAMEDZ-PRaUGHXx6mUiPg-1;
	Thu, 22 Jul 2021 14:18:50 -0400
X-MC-Unique: LqAMEDZ-PRaUGHXx6mUiPg-1
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1626977929; bh=2UoCNZ/y7PGVn3nooshfXsrK9WvaSRqC3fzl/BCw7Q8=;
	h=X-Sonic-MF:Subject:To:From:Date:From:Subject;
	b=uGvz6qPOSqf4/pHe8ZMb017BZGBPVq911gplTbNq5g7ZXSNMu1n+9bab/CrEOojTA3ZqMkRHCxFPKuZJtziiQFju5m82CGZkjGUICH5/0B4TdIWNpVvYzFbKZJx+CnovvbOULAY8RENvjMwGBPWlnNepKwc/MbLqviho9SKi/zw4rfvU5y7aoR6UawjDN5+overqPVf0lby6TfZEaMdqqyTNV5OQja5qLD0kpuLjM++zU+PK2XYOv7tx5wt9WNoJRSJd/DSFQ5iV3Xy1yJMp2ngWV9WHA7yHHAwwoaOolockBslxRN5iRyFGCOpGbpL+CSFl6av5v6ZDP0Q6tz0uqg==
X-YMail-OSG: KPXEpHMVM1nOwx1nR1DCunj7CLFpPhHVQrXSXJOb6wCqFzrEwW.YmlpdanEx4v2
	R.WG98CM7vSeuXWV2Qi5LloawYKNx7EYcsbaLhJPBOhV3gFPMyXd_uvCx4lLEGfdjsXdFQ2u4bFu
	8xLcd7XdrWRYtn7SwiraB2A9nk_MS590j0r_uveSxZtyx68NAoab3ALm6bdFvk8uSozErUcP41B4
	Ow7vVkSrZfygVejmuvr8DGkSKVr2RjenVItAwpzb_v90WZQYgdvcM0Eu764Bi09T9G89UeYvtX1T
	SeK.n4y9xTWciw5OrUS9bVQPwjz54BZo3gAFTxA_R0zwkt1.UQLK7T3NUMI8uXbYjPPqMALJWBQi
	j.N8AzdjEv4MRn1iJ9Z2nHEne40CKboPW7_DY6Ww.GOdY.fF2nQH1uPQTC0WJ0xNsaEihDlVUDtw
	.KGu95wZqf0vMhEHxku5kGNii9Y7SCb44rZM9Z6NOOvd_6U9aOnrNhbowIG7CEuAMwN4NgQzYksB
	xwzF.e4f5V0mJX8g6YIUT4LbBim1SuUxDt3Q.dn2KD0dn4QbWBCsE_le5ETS1.6ZLqFNfIQBu7Ty
	g.eHqiCkXPg1o75D_qj_dLWJm8SDt.CqTVjGaPDITautEQCLhUEPtXdhpRwJ2mGwOFiXAOacFpDU
	N.IlHG5f72Etv4B4FCsFLaPHTHQCNq6nDQD20q6wy6PiKOh03SrqGHKUopPrE2ae15xh9vT1lqXc
	pyjtPhAxDyBaJD6zOM1CzMYMDKEFKNfJrwT.iCd1mWdyUdEoozmrp3IWGQFutYfpzRnP43LbNFwD
	DPS6RHbhBXJ.8.x1imwjaNDhQr8U32dBO1wcOmbF7eCvAaUKbwx_iKRAQCx2UHrAFTzuqzzi9tKf
	X3TxcrusfFvYqE3iremaNt0ahMKF6f86awYb26qmjmq.eVkUTUhWy8rpAOsGAbgs.5sv9U.yefGF
	W.Agao8NdCSJFwHOVL2lH.S07CZwt2GCAyfuZDyqFUozpdYqaOSR5HbqHfmHayDUsl_3k1wo6ll2
	naBnBZRp19ebqIU7IWk0cmrVWKKzgj1BjY0J2JSbn.YSeRnnXbBIexpxUkDnFuEZh3w27SBhp3Qk
	tnoxI1FVRYVFofnG45A9eECZLg3s.OZ0J1S6bX3pM0IjH62Ck2SCf2eGN17BIfjgo8UJT24lEJXO
	uJcQBLNmQWuZvtv0LQ3YTyBWZYCX4HQ_AYgTPcI7XJbDrRL7eRUeSTuZeqQXDW9zt0sp2AZxiHcL
	VCRsnujR_AZKSreVT6_On_2RXhHmvepOQNCI5aOO5j1PCe_bNDECM.IGs3fIXqFyrhUiIHWZYE6i
	MU6TdfDte.R1dTTk7sxmp9CpaELJ_WZ8WX3WXMowI1D6N4kg72zObxjCUQpefCV9HPTAeSo_FI_6
	FfmtgJx.XfEmHNlN_mumYbYsAUffLh2Z8N2DP7GXXyvMfH6_ptHjJrbdpf9fr2e0b5T6dr_HFT7b
	gJHd3v8s0wgbeRaWTNNkr24INKmYbv0SGQcZqiJYqKTvA_RRVQkOTkFo5H5XR2fyyHSyrKo8CoQm
	oM2nGOYldrS0XWAOkGCoteI1ab0kfJyUr4ve.hapt4BSX7lOCpeSt0hSfUfo.ixIDwlOwLKloPbZ
	J4YCS9ErMjLX.ss0KPi1Yixuhlc9B6AQOplNX3dgc_6VfVf_jTNwlMdfxyqGHUT8t6vtk817dEWT
	TVITTcbqmAP4jj16hM6UfJaDNUcMx.pxvt7fZ_fPAwxjApA9k9TGSWYcK__yy4hZuUGSdANQ3Zoe
	5T.g5C7xOa1Ly7h3dIdkzZROPmJ3UXEUHU5kRiPY0IPAJ0aF7FsiApFn1U1pi6NWfALnduM.sVeZ
	tkNErZJc1rYyEpPPQ4dbpTsS2x_C4CgE735Td873zZRwBY00Eg4.olfnl7HGhXtWNSe3x4ZL0sdG
	XzI.sOPXIKf3jxR7odnxIBHNhEPNtx5Ylqn9JjViFsyCx6Px75Z6KbNdU89avoCp479V65ztwszh
	a_pblwTEd.fh7iODI69L7TXgJD_GIsKEv3UasDXAuV0FxYVIunUnksMmQPCpFDKvkdJpvNtnGmnC
	96fhaScE1xD98mu4pNacXIjZDO0AENKlkLz1ihcMg2nNg.h9fuDtXwLjpZK12ICoUcitahREdYHM
	lLL5YhWFXT9LW4zX6Wi2rIVWoHSnkCWr55J9MhdjMK92Hoe0La8EbSKbF1ZBW1p1PU6noAF94u8p
	QApsxFbrKYMnWAY0Hn.Uc7BF_6qfR2Tb1IyFW4SNBkdsatILXUX8AbpahcjNC.u9O1pSDpPwJMCw
	XnAI95s79cWTI0WZce.43s6Y6OYnQQgo95HgjWZ12Q8TKst8W83x_SxjDw3lO72XBcfY.CKXtTIY
	3bqRDQ6wIrPiRBsY-
X-Sonic-MF: <albert.e.sten_clanton@verizon.net>
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic317.consmr.mail.gq1.yahoo.com with HTTP;
	Thu, 22 Jul 2021 18:18:49 +0000
Received: by kubenode550.mail-prod1.omega.bf1.yahoo.com (VZM Hermes SMTP
	Server) with ESMTPA ID b4f755bfcf3b9ed8164a17ab04a84d84; 
	Thu, 22 Jul 2021 18:18:45 +0000 (UTC)
Subject: Re: Thunderbird on Slint
To: blinux-list@redhat.com
References: <dded7ee9-4da9-3ec4-bdb3-a437226a097e@slint.fr>
	<15736C51-811B-426C-874B-DFB7FA182741@gmail.com>
Message-ID: <20588a5f-b974-5c91-7a5a-0ad1dbb9ce4f@verizon.net>
Date: Thu, 22 Jul 2021 14:16:52 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <15736C51-811B-426C-874B-DFB7FA182741@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

WWVzLCBJIGRpZCB0aGF0LsKgIEkgaGFkIHJlbW92ZWQgdGhlIGNoYW5nZSB3aGVuIEkgdGhvdWdo
dCB0aGUgdmVyc2lvbiAKVGh1bmRlcmJpcmQgYXNrZWQgbWUgYWJvdXQgZG93bmxvYWRpbmcgbWln
aHQgYmUgaW4gdGhlIHJlcG9zaXRvcnksIGJ1dCBJIApoYWQgdGhlIGJyYWlucyB0byBwdXQgaXQg
YmFjay4KCgpBbAoKCk9uIDcvMjIvMjEgMToxMCBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwg
ZGlzY3Vzc2lvbiB3cm90ZToKPiBBZnRlciB5b3UgdXBncmFkZSB0aHVuZGVyYmlyZCwgcmVtZW1i
ZXIgdG8gYWRkICJebW96aWxsYS10aHVuZGVyYmlyZCIgdG8gdGhlICJleGNsdWRlIiBleHByZXNz
aW9uIGluIC9ldGMvc2xhcHQtZ2V0L3NsYXB0LWdldHJjIiwgYmVmb3JlIHlvdXIgbmV4dCBzeXN0
ZW0gdXBncmFkZS4gIE90aGVyd2lzZSwgeW91ciBuZXcgdGh1bmRlcmJpcmQgd2lsbCBiZSByZXBs
YWNlZCB3aXRoIHRoZSBvbGQgb25lLgo+Cj4gSFRILAo+Cj4gRGF2ZQo+Cj4KPiBTZW50IGZyb20g
bXkgaVBob25lCj4KPj4gT24gSnVsIDIyLCAyMDIxLCBhdCAxMToyMyBBTSwgTGludXggZm9yIGJs
aW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4+
Cj4+IO+7v0hpIEFsLAo+Pgo+PiBxdWljayBhbnN3ZXI6IGFmdGVyIGVhY2ggdXBncmFkZS4KPj4g
VGhpcyBpczogIHRodW5kZXJiaXJkIC1QIC0tYWxsb3ctZG93bmdyYWRlIChtaW5kIHRoZSBjYXBp
dGFsIFApCj4+Cj4+IENoZWVycywKPj4gRGlkaWVyCj4+Cj4+PiBMZSAyMi8wNy8yMDIxIMOgIDE2
OjU3LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0IDoKPj4+IEhp
LCBEaWRpZXIuCj4+PiBRdWljayBxdWVzdGlvbjogIHNpbmNlIEkgaW5zdGFsbGVkIGEgdmVyc2lv
biBvZiBUaHVuZGVyYmlyZCBhY2NvcmRpbmcgdG8gdGhlIGluc3RydWN0aW9ucyB5b3UgbGlua2Vk
IHRvIGxhc3Qgd2VlaywgZG8gSSBzdGlsbCBuZWVkIHRvIHVzZSAiLXAgYWxsb3ctZG93bmdyYWRl
IiB0byBicmluZyBpdCB1cCBhZnRlciBhIG5ldyBpbnN0YWxsPyAgKEkgaG9wZSBJIHdyb3RlIHRo
YXQgcmlnaHQsIGFzIEkgZGlkIGl0IGZyb20gbWVtb3J5LikKPj4+IFRoYW5rcyEKPj4+IEFsCj4+
Pj4gT24gNy8yMS8yMSAzOjU3IEFNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9u
IHdyb3RlOgo+Pj4+IEhpIEJyYW5kdCwKPj4+Pgo+Pj4+IHNob3J0IGFuc3dlcjoKPj4+PiBodHRw
Oi8vc2xhY2t3YXJlLnVrL3NsaW50L3g4Nl82NC9zbGludC0xNC4yLjEvdGVzdGluZy9SRUFETUUK
Pj4+Pgo+Pj4+IERpc2NhcmQgdGhlIGNvbW1lbnQgYWJvdXQgU3BlZWNoIERpc3BhdGNoZXIsIGEg
ZmFpcmx5IHJlY2VudAo+Pj4+IG9uZSBpcyAgICAgYWxyZWFkeSBpbiBTbGludC4KPj4+Pgo+Pj4+
IE1vcmU6Cj4+Pj4gaHR0cHM6Ly9zbGludC5mci9kb2MvCj4+Pj4KPj4+PiBDaGVlcnMsCj4+Pj4g
RGlkaWVyCj4+Pj4gLS0gCj4+Pj4gRGlkaWVyIFNwYWllcgo+Pj4+Cj4+Pj4gTGUgMjEvMDcvMjAy
MSDDoCAwODo1MywgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdCA6
Cj4+Pj4+IEhpIGFsbCwKPj4+Pj4KPj4+Pj4KPj4+Pj4gSSBqdXN0IGNoZWNrZWQgdGhlIHZlcnNp
b24gb2YgVGh1bmRlcmJpcmQgaW4gc2xpbnQsIGFuZCBJIHNhdyBpdCBpcyBhYm91dCAxMCB2ZXJz
aW9ucyBvdXQgb2YgZGF0ZS4gSXMgdGhlcmUgYSB3YXkgdG8gZ2V0IGEgbmV3ZXIgdmVyc2lvbiBv
ZiB0aGUgc29mdHdhcmU/IEkga25vdywgSSBjYW4gcHJvYmFibHkgZ2V0IGl0IGZyb20gZ2l0aHVi
LCBidXQgSSBtdXN0IGFkbWl0LCBpdCBpcyBub3QgbXkgZmF2b3JpdGUgd2F5IG9mIGluc3RhbGxp
bmcgc29mdHdhcmUuCj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRo
YXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxp
bnV4LWxpc3QKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+
IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1s
aXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5y
ZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

