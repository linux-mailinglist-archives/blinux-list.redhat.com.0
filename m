Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id C17943BE1AB
	for <lists+blinux-list@lfdr.de>; Wed,  7 Jul 2021 05:55:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1625630108;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=P5x/C+ysxk+c2kehlPcAKJDY80rHQd4OhZybFMhGEtg=;
	b=CR/W8AFzAQFDZCrncINTYUq6Cn52S1NzmjyWKPvUizQgMdJ7JEPpJwEJKmHgcd+anc7b56
	GH1UWvqMyPylDbVaBCacVfwMlHk53nkysafhi62ApePyCUbdGKeYRXsEapQNlYZy7w5FqF
	+dQFPcEDwEUzgUt4AK0497TQNQwiuOA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-141-W41ioANiNk-0Yjl1KuAxrg-1; Tue, 06 Jul 2021 23:55:06 -0400
X-MC-Unique: W41ioANiNk-0Yjl1KuAxrg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B1261948;
	Wed,  7 Jul 2021 03:55:01 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8E588100EBAF;
	Wed,  7 Jul 2021 03:55:00 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A6C901809C99;
	Wed,  7 Jul 2021 03:54:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1673smX4015860 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 6 Jul 2021 23:54:48 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 55FF42138BA3; Wed,  7 Jul 2021 03:54:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 503902138BA1
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 03:54:45 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 54BB88556F4
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 03:54:45 +0000 (UTC)
Received: from sonic314-15.consmr.mail.bf2.yahoo.com
	(sonic314-15.consmr.mail.bf2.yahoo.com [74.6.132.125]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-126-0ikiuPlxMUeEu456efVz4g-1;
	Tue, 06 Jul 2021 23:54:43 -0400
X-MC-Unique: 0ikiuPlxMUeEu456efVz4g-1
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1625630083; bh=mjCgrHyM+Vn7jqa/Xg1Tot8ylkhgXi1ceRTG/4+SvQ6=;
	h=X-Sonic-MF:From:Subject:Date:To:From:Subject;
	b=Bo1IardZ4n2WBD3AelS0LuoO85FuVFVIUEMKdEI7g8NCy/l0L/TL5nSjV1asFim90CYWSBWKVpxL98x8Q1D6Q8zFCQMd0nYZukBPVFTI7ivA3ZQUhamolxf6nRvCPdSffmPuzXSrancGGqfoOK+6oel3rZhytZ9rATzNgvqGYYu1NKV3tnIo3xqsImPm6SEsMCb/lWAfoUblRDjk9SvOvxJOwt2Tm5nXzIzWRm87RnQbBoXyajncor5lAteSKKitwm+UCoj9j0RHrQMHHc2hq8OJa/w8v9QbEHfFPXQ7tyVRit/nOzIPa+jzbUBd+wKn42ZcfrKIddJEyKjGPET2AA==
X-YMail-OSG: OLfmc1gVM1m8IzzsJunna082fe_t0Eb.G69._9vGJar9i5K8e23Q1R5.htBjz5J
	CTQBzKgHLcQFiom7sifhVMjepk8SBuXNmtiyy6nI_2S0f1x_eiCgQt0R9vtxfVyxNy3rQihEpH9b
	uiI54gXK3z5vHJ8uTeXSRbGvq9qMxKWdBcn7n.hZ.bCnJm_WiTfUwdTW54RxOSw7TCZ4kI2b2VC0
	yNFy4Isx5ARcCYDzMPhQR5Pq9wOneEPUoEjVWX32A3dSSsYjB99RxEhe8QCzIH8fr_0S8M7NXuWM
	DCH8hs2GqHCqHmDAxHqQtYue6uM_q.ydsWg.swACxr7EPPp1rumSHHo0cAU.3CrlZCquEwnaVxVL
	GalhLy_xhhMuvUa2vEWlM1zFJ9CDL_EMf54sJEhLpEQRdObCHPNnlgMMPBKbaYdT_18.3q1mub5n
	Um13FXlMaNTejrRpibB7Nr6I9l2z_GIPbRDBJVJmIGd3QpYS1WAnUUcnaX75tAAg11fqX2PaI.Rd
	_0u9giwuOIMMNWOB6Pr.AlzVy5yseRjZgRpbX3IEHLpBk6IoCJm4D1If25cmGrtxaFXai1oDe2wb
	guUzFZ4mNAvAaZtBggdqoJZQnR7vv7yXvbTWuUnMNGtJUonIYgAyfqaQLUOmU7xF.8S7rIwy5Sc7
	gl6PZ37o4C_6zBXkgO6ksPRxs2n9zQRZRdFk3cl_TZqi07GopgaVvtkknGSbVMSFkizqvcNdLOGc
	.swreyfkI.z3gzqbg5tZIb.wClG0eARAHPpSz_aomsqgZSVp5SWXCjqxc93PNMGooK2DIQsQB2hh
	7S0DrORN0ERAVMGTvG3p_IWHck9UGPW00bc4Nm62zqCnC1DXiD3XCAvG4RtiQzT8ohCR75qzPpss
	sino7y009E39X4BiozvAfbSaAj31.s1kEIbmV_E9Ig6TGS_mcnRvaIIPtIPOeTsaaiIeOeM_wSOd
	EDn0HKDkzItdKCiXPxxXzkMg2n5NwYuWDLnk6m4KosHs7U41QLDqkowJNMMt8_zl4bKoIt5S2Zgu
	gJmKlCQA4KRA5yKiNcKwdsbjUdsNQrCmLcKDb5yPIvYQeAzmXQpOLi7Spj96BMeQmjQLqFFLlHZC
	MnyEha7bBzFqUGrMkrFjrRnuNaeRThbXstZ3aZbg3pCMgNdKhVov_AhmNURmgKEEmEBf1nMeo7ne
	wOXMcrsWSBZmXo1xnOGrqmM3oL4jWMzRqkDYb9rDbV7YwPnvzJNS97UG5waTaIF2_NRkWn5rilpq
	GDx.ouEVOy2pW8kjrXSFAJH.gjaa8h6VRFGrtCz5K843JohtJ1QwRdylJwwcMi5uKwJaBDK.AyFp
	Qf3JQ9or9OJ_NhKgUanQYUdgjKsevFVBsQKd_QueNIM.xiXm3FYCfpaz.vG3zk1RnUZ.xhORnpQ3
	ivu_kpwU.1P0U_dYiTn1h4lDcGeHTi8C2TiDl8PVwry6V6fQITwNdlxWj9tXilUz8CNnjujgySP6
	ri_SZiEaH2YidoBC.RusFEMkBDcV7CgpdyYQsWOazDDNlG1556XVEzJyfsPsw6o0gp87Ja.ye.j9
	MmT6EnVrMrS7KWQaQGeu_XIDM2s9xNqb9WnisMUHToKrbjgEgAxQjaceaQA0ReoiyJEYsqoT8Fxf
	173aV_sm8_gzd36bPCruwYN3VE8H6qF0wooBwKCtGtm_SvqQ338OosJYGWcXTL_RKmGEDrCz8sVo
	cE1GUNyAUCrX0_2bzDpwNpk0uS.p6dPnAqDKvM9TyFhJcC6xsSIWyZdHh3wfujFRBAcZrG3gOmr2
	EHFYKSShV3dBDrDQqIwyeLlQLkM7skMOjMCzTpLQ.0W0bYtWJCKA..81sJ..1mnK1nJnOCT20ofF
	H0cH3RcqFy_IlWWSX8htfMMMMwPlcdrPt.C2s.rhLYy4jZwpMkFpO_J8xyde037AEGqGhBm8E8nk
	_5ooc0P2Lb2kL9lplgbVAGAPML0rjRlMzLanm9eysyxkQTRNaeGqH2S4hoMo1XsDGRaJSrRsAiFx
	jk9Fe6UxSiqJNAEyKv.TelkY0piw73J7PLYMUV5x7ZAB8.bKm9O2dakYgweYrB09Q1_r8zxIaY0N
	1HN3BnQOD4iq4.GNj6XrBLrJyXMmEH_LYZrxPr25AfUJxi81zSOFrBXzY5HCY4kvN0SRN3RSwGD8
	l0iyknE2vPmTBIKyyWYpLQjHa7WNmHAWRdJqItEB0M0eby9dO0CGdp09xde7_tXZU.6x6z6tUHVe
	LFqsud50rmi66k21.0Jxg2O6Ws0jY88TX7J7ufsYGf0HfNNXWuXSvCvf8Bvfv1AHNUBMsvyZHhht
	hvaHyraHRtjjZjaoLhZbJ47ktcy0xLDGmtxm7eZOdFTHEexAefwynPclT.aH4.lSIorOYOHWs4V7
	_xrQaSeCyPky0DbTdVOJbOgrBuDQ59rjgoTf6oC0.7.GujctmLa6nuX3m2WaF.w--
X-Sonic-MF: <ashbreger@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic314.consmr.mail.bf2.yahoo.com with HTTP;
	Wed, 7 Jul 2021 03:54:43 +0000
Received: by kubenode546.mail-prod1.omega.ne1.yahoo.com (VZM Hermes SMTP
	Server) with ESMTPA ID b9476b01e823bf336532021621f648a6; 
	Wed, 07 Jul 2021 03:54:38 +0000 (UTC)
Mime-Version: 1.0 (1.0)
Subject: Re: Suggestions for Linux laptop
Date: Tue, 6 Jul 2021 23:54:36 -0400
Message-Id: <839C771A-8B53-4421-B972-83DAC5F8194E@yahoo.com>
References: <c690bab2-3bd7-e7f1-cd3f-ed2acfef85c5@hubert-humphrey.com>
In-Reply-To: <c690bab2-3bd7-e7f1-cd3f-ed2acfef85c5@hubert-humphrey.com>
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
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1673smX4015860
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Tm8gSSB3b3VsZCBiZSBsb2FkaW5nIExpbnV4IG9uIGl0IG15c2VsZi4KCkFzaGxleQoKPiBPbiBK
dWwgNiwgMjAyMSwgYXQgMTE6MDYgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Np
b24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+IAo+IO+7v0FyZSB0aGVzZSBtYWNo
aW5lcyBhbHJlYWR5IGxvYWRlZCB3aXRoIExpbnV4PyBJIHRyaWVkIGEgc3lzdGVtNzYgZGlzdHJv
LCBidXQgZm91bmQgaXQgd2FzIGEgcmVhbCBjaGFsbGVuZ2UgZ2V0dGluZyBhIGJhY2sgc3BhY2Ug
YmVlcCB0byB3b3JrIGluIGEgY29uc29sZSBpbiBUQ1NILiBBbHNvLCBhdCB0aGF0IHRpbWUgd2hl
biB3ZSB1cGdyYWRlZCB0byBrZXJuZWwgNS4xMSBJIGxvc3Qgc3BlYWt1cCwgYnV0IG5vdyBpdHMg
c29tZSBtb250aHMgbGF0ZXIsIHNvIG1heWJlIHlvdSB3b3VsZCBoYXZlIGJldHRlciBsdWNrLgo+
IENoaW1lCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4g
aHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+
IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51
eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1h
bi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

