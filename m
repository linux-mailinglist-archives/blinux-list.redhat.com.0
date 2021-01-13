Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 8A02B2F449A
	for <lists+blinux-list@lfdr.de>; Wed, 13 Jan 2021 07:39:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1610519959;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=iBIbAbdVY0e+xGbP/Cyu+CmF7HOeQGwiSf37cRr9Wjo=;
	b=HNa85NTThj1mR1mGxJMG+MSNF0oGDCF2F4wEciGyUV48W8g3P7pmWeMTYRzZ2pz6xB1dEl
	nHJmKcPXtPkYrAbEaSlegQsKr6e4uzZi0wU5+C4YVjJwAkuP7Ro0lgNiLMY0b5bXVC4gSe
	P0JapI9wNtGofq57hFT14cyHcbk9vZA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-115-ue7XTJkdP3ugIVlCC0sxrA-1; Wed, 13 Jan 2021 01:39:17 -0500
X-MC-Unique: ue7XTJkdP3ugIVlCC0sxrA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 17886107ACF7;
	Wed, 13 Jan 2021 06:39:13 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 570E660BF1;
	Wed, 13 Jan 2021 06:39:11 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1FCFA4A7C6;
	Wed, 13 Jan 2021 06:39:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 10D6crlq030105 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 13 Jan 2021 01:38:53 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 006402026D49; Wed, 13 Jan 2021 06:38:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EFCAE2026D46
	for <blinux-list@redhat.com>; Wed, 13 Jan 2021 06:38:49 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CA062858EEC
	for <blinux-list@redhat.com>; Wed, 13 Jan 2021 06:38:49 +0000 (UTC)
Received: from sonic304-56.consmr.mail.bf2.yahoo.com
	(sonic304-56.consmr.mail.bf2.yahoo.com [74.6.128.31]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-189-KAhdxQ7DNNWPwcpqn1XqSA-1;
	Wed, 13 Jan 2021 01:38:46 -0500
X-MC-Unique: KAhdxQ7DNNWPwcpqn1XqSA-1
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1610519926; bh=fmrkD4cV3Gt3IAHUxZzKKR+zSEtJ5m9iHv3D9/X45EX=;
	h=From:Date:Subject:To:From:Subject:Reply-To;
	b=mACqUzDfaR3vupiQZY0HmOTR2tIASSjLYGn/HqZ6pOcLmkMa5yPeQ3UxvzweVvS+3kCBReaKCZMKDzXBBbbFMqlDb9rN7iCzXjvp9qX2jCPdV8dtbtWidXCHM47aeB0SEJARxs7Cgrccn2XY25hwRtI8c8Gv4BkUKZ5I1lczu9InKabB0cxwlBzX1QJBefQTgRHeTtTjie3aq0aahKllQoeTj+SVUeOFa7T9nNdc2/mVL2ZRU/Qmgi6Pg+E4hSuj+MhuYIM0Y/yv8iHGsmbRPqxO/J7U3Lxa9tIcpaeZd0dweLvd4JNgu8niLGhkMRgb07kawzUqYmWQPz1AvtpKJg==
X-YMail-OSG: 1Vw5JnUVM1kzUiG01vLxIjy0Qy5am57SGLP.o9YsqcspA8DX495.GP7ha7Y2piT
	cmjf1KoghMBNalAy25XEhGg6mmomjCgTCCzoVHbqZRLrypNNYzsPMJiwvQeYPwAviDKAXQFayMJs
	l3Da9oNsRxQa4q1GNWO3YR904Aq.vS6PVRj3zNjBa3neJ7SgfJ1qm_QfPiEiMTXyIjAM58_yf7rx
	.lI5X0AV07UsLhzC9NJvgDankWcW_XGoV7BuBT1H5hRyCWGmPU9tWwlShasbM8yjrRXJvYnaSCM9
	_bDSWbk5cK7AWIyOm_mVw23MIzc.WYlOK_2uq6Iqd1u_0h2_JYH.kzwLHjnj.lYlcc_vyeRQOjSe
	egVlLgwHA3xpSsCmr1xC4VmAur_WGwIh8jElrJ.y7YggvHa.xQpfnC8.8KeKOc2PJRLTZ41Wfut8
	lFK6qDsef0T.vnZP3fT40T8tFdKtxRK7JsUHQdj7a61fCuKXPAYY.ZjFyB0I.hJYc6jxTTLp0aTg
	bf9Zajjyjt4YK.nupJ2.GvhI0sOT91CTe6xuaG6HWFL6oQt0UPVUrXN2N_rzG2FnRE4IOBfAn7qd
	5aXlcJSAK40R3umAijXVoUH7eC8kyytVkePa98eSxd52WUtzeOHDkCsrwEQeElvBPXkx8pRxn.za
	OFI0SVbXcJlqKIXLXDQQjhguTJZ1lfMAjqy0t6C3xlD7bBBT8gZfz38dp.yABFRgIQe8eU2QBlQv
	LAGTJ4JsnDFgokqUKLTBXWROl0q3KcX.300L9p8qyxnjmCkAtUrEzxGtyjRblx2gqyUokhKw8yoJ
	KMdQkhhP0dBInEWj50_iK_MyiDJOU55knsNqqqd3uWamPmzsDlPVED0aVtAMzLuLGH940M8WvHL_
	BbfFPAhUe9LCMt5uzSmo7BgZGG2oYXmXiz0NpTHA2VAsTZ1jBHmLc3Yru3INGEdbVVRiy4uwEDS9
	W3U87eXDHgAinl7_LWiSgyQPOY_J1juIuLPymjC69qDmgSc5qKnoTDrinQWhVcNHk2_vhll9x9Cg
	D78ku3M0jZcNsw3wtBOx07z_ep9Js78P7qprfjWmiCHjNG2I0FcRrdWbjQbJuAyaYcrciKKIxWAP
	NzysI377vdUGv4jnzmz_a8ar1DIxD24nl.Cn7qM.MfiSH5sIm9ChWwKudRMRLumqGo3j6oRwIOuC
	.PGplGVlOjpw9jmRLDSGqXveHUsbffRLieuzt9Y99iPkrAAoSTBc0gaww3KAsqIYwCUL9NXCMzfS
	KZRtEwy_.NUYHQjGoaftS1gHL2BAzvyzh6AfP8hYToyTs1ighA1gBIfpJPrGaExGRYg4KJy_9oGr
	qXAfg8VA0XbP8UW.cguCJPw3p_rg5dN.d0r.voQvNAGWoYSSWWJipLZ1jAX3_TGblPw.n0oN93ou
	cWpsTdY0A3jikhDBslNgHrBFtUiodudGtZ2655uZR6t9_w9h27Gd4pm7ZiNUBJAAGwg_RncJg.Vo
	lqOFenrKkTUbDaDAQ4TRzCbwByDfROgw2EwxtAORap3401qsVqHTCvb4an3jURJ2YkWetRyR8Z11
	P8s.O8urJFsbq4R7IOe_2.pxXEdFaLWAG1lfift.mnWPiLkN0pMhitZwGSGiifhyI4dFdid.Ydcz
	tKGm0yn_Or_8JScZaO3MZcH86hhKMgaxjs5WlyeaBCuMe1qyPRcHbg79ZVZV_gczBC4ktIqJqoB6
	SE7P_grdybE.vbQ0k_aE1hwM8aIA32_NwjYwyMdrqNop5RIe2xCdBYjui6VAENfG7iGbFMtyZBve
	4ysHOTRmR6aGLb.GeAxwvZy.TIbpwC4KxVJuPF.TzrGbqxJ5EJcgUz9RoJkBvr3ZqOggyKN18Rso
	LKeURTnQnqvfjm4mJF2yl_RyXArdVoKMhLV9yiUt_INOfNhQOqeUvX4BqWyg6qfUf.l69v.y7Azm
	s1JA2VIbt8e6Ahpx.Uq3pDRa4aY5JS2aAjqMYt10t6hfIlYdoC.BWKZnGknXdilHPZaNnBG5Fohy
	7C6g4L9fAWQvMZlffhL_GwV0N6Fby2JWW95U3v.9OS3SpbH6oHxiz7wgDjfcTND7x3PY0sODNqh_
	5iK4wk7OEX2n6XfmXUt2uzG8HCeOxRik6G23RYmLtPe8qtFXcOCusHw9TZPQoNmDyL5iDYWAhzLd
	JmJLmf8dxqxVS..e7qgpn1HaBSyzZjk9fFynBXwh.gZpzlgrNurRi5K5oJptWSdfc6wzsZVIOqcG
	PUAL9WYPB5kOL9Y1homaKrBK853ttVyNcwDQoU3xttpNVeddWhlaa73r78oQWVxx3130etRCF50o
	ylBZSkGGzDekiguEH3Pq9M2u0b1lbqBX9xgjQ6LDTrUsmyWjMGyntKjMq2HlcQ.oAcM4qKHOABa7
	CJYQPyiMWaVR.G1IjO7Cfv__.D3jsjLvzcHys0aaspRAHTI0-
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic304.consmr.mail.bf2.yahoo.com with HTTP;
	Wed, 13 Jan 2021 06:38:46 +0000
Received: by smtp414.mail.gq1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
	ID ad2c5349b566a134e4b3f4fe0325a4d1; 
	Wed, 13 Jan 2021 06:38:40 +0000 (UTC)
Mime-Version: 1.0 (1.0)
Date: Wed, 13 Jan 2021 00:38:32 -0600
Subject: Fwd: Does anyone on here read code in braille?
Message-Id: <A03EAED5-689D-45DB-892F-7DBDCBE70CA3@yahoo.com>
References: <198C0090-F028-4CA8-BE77-B90F609E3433@ivytech.edu>
To: Linux <blinux-list@redhat.com>
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
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

CgpBc2hsZXkKCkJlZ2luIGZvcndhcmRlZCBtZXNzYWdlOgoKPiBGcm9tOiBBc2hsZXkgQnJlZ2Vy
IDxhYnJlZ2VyQGl2eXRlY2guZWR1Pgo+IERhdGU6IEphbnVhcnkgMTMsIDIwMjEgYXQgMTI6MzU6
MTkgQU0gQ1NUCj4gVG86IEFzaGxleSBCcmVnZXIgPGFzaGJyZWdlckB5YWhvby5jb20+Cj4gU3Vi
amVjdDogRndkOiBEb2VzIGFueW9uZSBvbiBoZXJlIHJlYWQgY29kZSBpbiBicmFpbGxlPwo+IAo+
IO+7vwo+IAo+IEFzaGxleQo+IAo+IEJlZ2luIGZvcndhcmRlZCBtZXNzYWdlOgo+IAo+PiBGcm9t
OiBBc2hsZXkgQnJlZ2VyIDxhYnJlZ2VyQGl2eXRlY2guZWR1Pgo+PiBEYXRlOiBKYW51YXJ5IDEz
LCAyMDIxIGF0IDEyOjI1OjExIEFNIENTVAo+PiBUbzogTGludXggPGJsaW51eC1saXN0QHJlZGhh
dC5jb20+Cj4+IFN1YmplY3Q6IERvZXMgYW55b25lIG9uIGhlcmUgcmVhZCBjb2RlIGluIGJyYWls
bGU/Cj4+IAo+PiDvu79IaSBndXlzIEkgd2FzIHdvbmRlcmluZyBpZiBhbnlvbmUgb24gaGVyZSBy
ZWFkcyBjb2RlIGluIGJyYWlsbGU/IElmIHNvIGRvIHlvdSByZWFkIGl0IGxpbmUgYnkgbGluZSBv
ciBhcmUgeW91IGFibGUgdG8gcmVhZCBtdWx0aXBsZSBsaW5lcyBhdCBvbmNlPyBBbmQgd2hhdCBk
aXNwbGF5cyBkbyB5b3UgdXNlIGZvciByZWFkaW5nIGNvZGU/Cj4+IAo+PiAKPj4gQXNobGV5Cl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0
IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vd3d3LnJlZGhhdC5j
b20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

