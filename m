Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id BA5043BED82
	for <lists+blinux-list@lfdr.de>; Wed,  7 Jul 2021 19:53:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1625680409;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=l4BtVIYc29WhCbr/C0phRdhoplT+wrytFEMTe6yRzds=;
	b=RRK/CkzxrPMR/KEcR51WfbM/MevMgQ33Y+I4qeXttKSjZsXrehpYmJc+g+Mc/pxAWKCtWe
	tP9wQcv7foE5ObiFsfIo7pazqspLRU0hPds/eFHSgvt9nw8mNsnj3U7ET9eIQaoaWS31rK
	mxPKJHZ7RQ6HVGR6Y9WdfzUAQb3Bt1w=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-329-whXJ6I3JOoaNNYCAKdgVAw-1; Wed, 07 Jul 2021 13:53:28 -0400
X-MC-Unique: whXJ6I3JOoaNNYCAKdgVAw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 591DE100CCC1;
	Wed,  7 Jul 2021 17:53:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3D130100EBAD;
	Wed,  7 Jul 2021 17:53:24 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9B7831809C99;
	Wed,  7 Jul 2021 17:53:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 167HrH2H001434 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 7 Jul 2021 13:53:17 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 627FA21EE570; Wed,  7 Jul 2021 17:53:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5D44421EE574
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 17:53:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BC94A8C6A47
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 17:53:13 +0000 (UTC)
Received: from sonic305-48.consmr.mail.ne1.yahoo.com
	(sonic305-48.consmr.mail.ne1.yahoo.com [66.163.185.174]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-572-EKmK5bsFPfigYGF-vKyypw-1;
	Wed, 07 Jul 2021 13:53:11 -0400
X-MC-Unique: EKmK5bsFPfigYGF-vKyypw-1
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1625680390; bh=knAeichOSBrOFOvC04o6P3vCpSIgNOL8XilyAzHHegs=;
	h=X-Sonic-MF:From:Subject:Date:To:From:Subject;
	b=WU7KTEtAfzKJct7P0Mv4z0zVjXMcBq5Lb5gh8sj1On7HDF8GnCDtYviPlM825G/m1kXTmSKikBeE1iDL/ql0m0+mAjHjxLmd+iqPKRR3iGO8ptcRbgrnZKrIew9P15UNdT7UOaJoZRm2hNLxw/r178VLQfWL3fMHObmpkknezC1JT5btNmxVF9MSgvaCjAb9+MY5HKpWbFcUP/NA7NBLsPkKrJpMK79R2rn28hG7ngITdr8rWDG0miRIjoF2ZwBHAQA5cRHOtArYUm9kgPi8yA+ObBkQcm6Xz/fJP+AmKM4wSljDRU27xWn85scjXmq1LyUS0uN1EdkNouaZ6aRDfw==
X-YMail-OSG: WXY6wewVM1nvH0lnl5nHaWEpA9uNSUPIGZB1CkdwyqUyzMCYICqX_jZk.qlUJ8Y
	Iqd3MlZPGEG4UUAZ_d6Lb7RYK6p_HpUsVtuyDcMs1GQtRGnLMcWQHKRLQUgj8GGZ6yZJc_70XUR9
	xC_VgfejMjVaEapBTReAp_9hnYOZ_C3jOxWjXPXPYpcmf4qsKgQrD0qCMt4KvFlBCB9oXDv.W0LA
	mwDqJ1AgMkKjuR6u_OK5oPU4OCVQCwaQEhdOsq5.87c.Ccb3yaIWtRNs1J1hhGHuLvbVguLOU8rv
	jrowd5PuKgCj3l0d5EtjT3hw13w_93k2iMYwXz8G1LRoNOpBQhbAu8IZT0aqzyiVj2Jl0xb9cv8B
	mbWRQkP.peY34nQmpBZvF.ExG6Sy.fKnmXOCszqW9aYQw01gSW2Ar1RnFKo3MBGg5ZRF.WMNtmTy
	ceC3jZwlVPXhE1D0ah0Pb4eOsKknjcslcz7mC.rEMWnapfi.PrRhL7F.sBRvZR.DxyJQXqAkDqdX
	yk8Rk2DgZQegnasWa_9aUo2hVmaqrLy8PqxY3HimXwJUKR.6a9VJ070u2lMa0PH_w8J.DFpw6GwP
	4uSs30IdsmNRwPleCeX1J.M54pnTUVUcxMgPopswSR._3cuu7IBHI5oXWNzm1oiobQufAQRWaUf0
	MM3vxu_mJRKQNt57EzkWrl6TBnvuEJvU2JxUgSYoU17cxOGlbzOFpmcsA8FX98oP85vnTLFnIp.E
	1kmmgUCwKcicrwon0Cx3CEKF5tGca7VIPELJ1M0imuD8SRFzpaHKODG06CpWUgJDK4qDLxsBBSGH
	Er1kuLEaZi5Pxk_KOAEOMDQkT4UZ0YFylp7A.LycgO7UP5F1PyqeL2igUjJf3u23munEVYdMZvKP
	XKaq1R_q5bWDy38Q.zx4fRH.oYKZXzeqVnsvNZOrhYswBS_VHPHAXLIW_hnjMwnQZQKkpuMPcYqc
	F49hxeFaO5KQr_CEJ8V5OblrfupkNeetr9ekwjnB84WJXDND9JS.TgcilzyzmUz5HJaIvnY.KMJF
	TnYqOGm1SsqpOk7rdFdiEVTkknTTqeG1tFTfEEi6xSCZSQiEcMTcZk7mP8pFLsGWF83o4k.zAD5R
	vsqsK862w7k.8RE9Jp31tjxGqISxVGaTEEpuLcvKd6SC.Id5wo_jG_uQlnnZfSmaWhAnwXVwmPM1
	dyinIF4ccygoJEDbRH_AKAFweaPqhbBKcCYFD3cyNKR32gMklGz_GKFkQ2v8COcaYl0FERHJbsAQ
	LQgISRghHobDPBvSrgILA6uHwNjiA.iTFdnRANklj4HWZz0hstbo_KzUxCiAnHBReJ2qG5hmagez
	P7GfiJc9i.EPypMlJkxfeHcoSzznL94ii_FyV.m5J1BdEN2pKE6UCrvyAKSWBioyOfPmIslmdcSg
	2.2VJunex3fcyXdIjhK.u6KFTxeElAhzINsqARwZhBbnIoLheNVNrUWSHigV5cqpINwxbLG3X1zY
	2avUXI2it0rgpc2JfePS5CM_ncrlEshFHNvMimH_IF7gVMSyxQpXSQAL5qFPg0iLf7W9XHVL6u8_
	jjB7eAaU1knF_iFSWR6d7f4d0IsyNbowUbiaN7jJuz28nRXTESOxNT_hC1f.UC78odrQcfr.G499
	sColBuuDD5UA2LqXqCKWUvjc5aWRLwcUO1Zsk_SASfVZe9P1LlVIVTeBTWKf6AXWI5qSTfQ8uXRO
	_8nge6fG4fyG2LVi3mbLOIXP1Lx7GxtzLqE3ZgHUIRrvIVptf3sgfSxXjKSnpxD3eAK9ChDFFwyH
	ybTfSO2hLfD8rAILxoy5rV8Qq0RzBLDwAAYmeS_fjpgk4RqNMmhmNyKxYPTK3.zDz7xvKB6oGX44
	X7DIGK42VuVSZHn0rr6FF5t7v5IJIIun1tsBwIlGUUDd9ac9Mjj3c6QSLyss.PRS.xsP3Zo6L6Dn
	kF4mdVU.MG3s3XOXxEhfBNOQRDcMVaF8KyOXxLhkcZLe74OoXzecF8k70brevZlrSNhnWF0A2OIW
	AeySw94I7O5oVP5HNjQnqvKao2DQzbasS67_snPvE7d.Qd1BSbzYRcL0_t9uNSDcS0uLvyeLTDYc
	RgrZvo0if1hmbd0OkyTJ.mDKsPAlOUMrnZ7BuH6K1sDr3BxRcXAkuWA231SWCB05GXZvlk0JRjUM
	xnkmb2vOxLU6PGB1qztAR_W2fBroTi1gVSJcAiRVLv8bX2R77yAEv4u.STrDKks8REX7_NPN3brr
	IOJPLL.CZkNv4ZgfG65pcxhDoswZwyy6PDrQfJbQxlWQgJvl_BzKLKugyn3_CSQzvcuG5bhNo38l
	aUJQ6ryJC8FA-
X-Sonic-MF: <jones.cee7@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic305.consmr.mail.ne1.yahoo.com with HTTP;
	Wed, 7 Jul 2021 17:53:10 +0000
Received: by kubenode518.mail-prod1.omega.ir2.yahoo.com (VZM Hermes SMTP
	Server) with ESMTPA ID 8d19f253c502b594e1b68e05432f2e00; 
	Wed, 07 Jul 2021 17:51:08 +0000 (UTC)
Mime-Version: 1.0 (1.0)
Subject: Re: Suggestions for Linux laptop
Date: Wed, 7 Jul 2021 13:50:57 -0400
Message-Id: <68C10B8D-4F85-4F62-8B59-62E026900427@yahoo.com>
References: <dcbcae66a3cb50071a927295f3101d54@ijn2.net>
In-Reply-To: <dcbcae66a3cb50071a927295f3101d54@ijn2.net>
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBoYXZlIGEgR2FsZWdvIFBybyA2NEdiIFJBTSB3LyBhbiBJbnRlbCBpNyAtMTE2NUc3OiBJIGhp
Z2hseSByZWNvbW1lbmQuIEkgcHV0IFVidW50dSBOYXRlIG9uIGFuZCB3b3JrcyBncmVhdCEKCuKA
nCBOZXZlciBiZW5kIHlvdXIgaGVhZC4gQWx3YXlzIGhvbGQgaXQgaGlnaC4gTG9vayB0aGUgd29y
bGQgc3RyYWlnaHQgaW4gdGhlIGV5ZS7igJ0gCn4gSGVsZW4gS2VsbGVyCgo+IE9uIEp1bCA3LCAy
MDIxLCBhdCA1OjIyIEFNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGlu
dXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPiAKPiDvu79PbiAyMDIxLTA3LTA3IDA1OjQ3LCBM
aW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+PiBJIHdpbGwgYmUgdGFr
aW5nIGEgTGludXggYWRtaW5pc3RyYXRpb24gY2xhc3MgaW4gdGhlIGZhbGwuIEkgd2FudGVkIHRv
Cj4+IGdldCBhIG5ldyBsYXB0b3AgdGhhdCBJIGhvcGUgdG8gdXNlIGZvciB0aGF0IGNsYXNzLiBE
b2VzIGFueW9uZSBoYXZlCj4+IHN1Z2dlc3Rpb25zPwo+IAo+IEJlaW5nIGFuIGluc3RydWN0b3Ig
bXlzZWxmIEkgd291bGQgd2FybWx5IHN1Z2dlc3QgcHVyY2hhc2luZyBhIExlbm92byBUaGlua3Bh
ZCBzZXJpZXMgbGFwdG9wIGZvciB5b3VyIHVwY29taW5nIExpbnV4IGNsYXNzLgo+IEkgYWxzbyBz
dWdnZXN0IHRoYXQgeW91IGNvbnRhY3QgdGhlIHRyYWluaW5nIHByb3ZpZGVyIHdlbGwgaW4gYWR2
YW5jZSBpbiBvcmRlciB0byBoYXZlIHN1ZmZpY2llbnQgYWNjb21tb2RhdGlvbnMgZm9yIHlvdXIg
Y2xhc3MuIElmIHlvdSBjb25zaWRlciB0YWtpbmcgYSBjZXJ0aWZpY2F0aW9uIGV4YW0gYWZ0ZXJ3
YXJkcyB0aGVuIEkgcmVjb21tZW5kIHRvIGNvbnRhY3QgdGhlIGNlcnRpZmljYXRpb24gYm9keSB0
byBoYXZlIHN1ZmZpY2llbnQgYWNjb21tb2RhdGlvbnMgZm9yIHlvdXIgZXhhbSBzZXNzaW9uLgo+
IAo+IExlbm92byBUaGlua3BhZHMgYXJlIGFsc28gYXZhaWxhYmxlIHByZWxvYWRlZCB3aXRoIEZl
ZG9yYSBmbGF2b3Igb2YgTGludXggZGlyZWN0bHkgZnJvbSBMZW5vdm8uIEkgc3VnZ2VzdCB5b3Ug
Y2FsbCBMZW5vdm8gc2FsZXMgcGhvbmUgc2luY2UgdGhlIHN5c3RlbXMgbWlnaHQgbm90IGJlIGF2
YWlsYWJsZSBvbmxpbmUgb24gd3d3Lmxlbm92by5jb20gb24gYWxsIHJlZ2lvbnMuCj4gCj4gUmVn
YXJkcywKPiBCaXJkaWUKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhh
dC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0Cj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8v
bGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

