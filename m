Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 9629A3BE139
	for <lists+blinux-list@lfdr.de>; Wed,  7 Jul 2021 04:48:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1625626102;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=jtfla5nZOXqIf+uPmOpWOXnfjQ/o0PMOdfY67Csj3c8=;
	b=F3xgMNkrQa5WOQpTWlo1HFgy0KClfB9aba162AfotWPTChBU9iz/zLSRRf4fXk4mZy1Rst
	6Jn/Rkscqsobfy43QDQpbLv9ICnv7zQTbV/y+EmhSC9uIDEKN+UhSHIj9SA4OQGZ1cGu1R
	K9W3UuU5eqJedcpeNG03w7PoOU0uExc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-521-cFPVB7SiMUCVd04tA5QPEQ-1; Tue, 06 Jul 2021 22:48:21 -0400
X-MC-Unique: cFPVB7SiMUCVd04tA5QPEQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D9604804142;
	Wed,  7 Jul 2021 02:48:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C4A0D5D6CF;
	Wed,  7 Jul 2021 02:48:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8A3554A702;
	Wed,  7 Jul 2021 02:48:06 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1672luoB011041 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 6 Jul 2021 22:47:56 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 86317114B2EB; Wed,  7 Jul 2021 02:47:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 80328114B2E8
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 02:47:54 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 09D5289C7DB
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 02:47:54 +0000 (UTC)
Received: from sonic310-15.consmr.mail.bf2.yahoo.com
	(sonic310-15.consmr.mail.bf2.yahoo.com [74.6.135.125]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-66-SMqQwh5pOJee1B7YVUqpoA-1;
	Tue, 06 Jul 2021 22:47:51 -0400
X-MC-Unique: SMqQwh5pOJee1B7YVUqpoA-1
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1625626071; bh=xbTRH6iVOGCv80+G3dLXx5vedNxaQRelV/JAI7WroBr=;
	h=X-Sonic-MF:From:Date:Subject:To:From:Subject;
	b=U1C9k4/JAO4O2kcfyHEfv3VGzRApsZyxfNvZF+pGbibBgTNKwx9hM3JYEgJAnDSIBG+0MFnCwbUY5hbkzUTdFCFpGFM10kUf8ufmUo40nlut3khytlIW+SGHSFgykWP15xMMkJJDvey9HtyBNtRuSAUJi2pZ7qOFBQG9zA/JeOoGqqPqrLoX7/diip7HWHawaIlPGLJJ3Wu9O2NHY2oY8mFv79sVZ2MH7gsNA5gPUr6d+aH1XaaGxgyn6g97HlsCYcSTbaOBQH3660UpRMnj5JdhwpFjoV5cyui0jK1hyIwsAuPBKjBMY68Jez//lzOYgL4G0H3ctDjQ4WJxDNApbQ==
X-YMail-OSG: P.Awg0cVM1mGlGVpGNeVpgUZdsqjXpxWIDkWxaxNpnWKCHKMhlD2J9YkGhpJma5
	a.uz4I5lFv5SKSzcHNUIIhJCdrkgRO6JqD8.LyzJPC_fcsEgMJTcDPhy3cqocmWiXKcb6XavHS0Q
	7aP8hAZLxP.6NNZWEeBCkhg8xjDT51FpcgLaf5amtDmeJZBJLkekXaglUsuhfLjaHrNNcRnwi6d7
	wvPSf_Ar0fBGKyHuKuvQzClaL0ztpPc3reY2AifYb5XwG3f9zDRDatiGNR5Aa91rjOz8I74c.35f
	FA_1ehwpUR0YFzHsDrMuIfFNza3tOwfhXYLsSgHuPqZjM1iyLFLjXJZAxm5PekA8BtHXUa3ruw67
	ImH_NuKTGqjTkylK.NB4UPvJxXkEDbUkuPs5gha.47eM8eK0AagOh3zNwHKwJ7l1BviE7QMUWFG8
	5Dik82DNnBvly0K6dPlCh.npY10uAOb0sqtoqtqa1bM75BR3gqyEsVNC_qiwVLNd9lHkNpG_JFuH
	7CtiHN.zvM.hs4mqUQPGSkbR3V4o1dk8xL4cRD6Ops2GW0.F4WgF1rMQbo9Tnsi0IzuT.1gwZmfU
	Uz59KPnmZBjlLe.uZtFYS9pGcBexEOdCZ8FKffxR41gMKqQd6E2uwO6unER9ar2zopB0EQbmTMik
	H7rIvOdY3Tl.4kChLZ4OWFvN9W04IZW9amytGUoEfU49F0XSaG1yGCbNBFI_eiBClASMhBnIG1CR
	FDJjDzbCb9kmgtI.R9OEcDc1NWRaLbHnjCHdxutkQK_gT_iSiHpmBW3CIVKlLAODKFffEdeNlQn0
	e5MsSC28fX5gE0e6TMYZUShn0NXGuH7hBnhXWPYI.ymb9uETM7IyM7kQyC4_DlGQB2m6TGkKzs9g
	KH9OPRWruK3P8Wn5Riys7LsELv2cgfnDQS_HjPuJnCgFIhJrTOV.P6nlmqQxKjBP7Dm5tNmY4blL
	Im0VpgT4wxOXzxG8NlZaYMnvix_C4ZqsQcZcxTWDX7a22EoUvUaYUoausidor.v_wq6mlv5rRkDK
	CFOTHcjo61uvyWB1OZMT15MWQpVhKL.Vj09cRu9V8Z_Mzjnkfc3OT5KL2DK9qngm9h7voFIyALWz
	b2Uft0JwlgtUG6njVNjVZxIek7KoQ65_A_ntNHcS5N8PLlQzUkg1QLvj3x4_eGxmiyTYlLTTi.ZW
	JC4DfM.ULWKxxxdQnhZoeItnnJkc9Nu.1uEOZdE5D.XQmIcBtTCrZqSqoGA0.BydTEX9SJ_sN0VE
	vgLvfMI90tet.64BWYweYvl6jagItJGHSEl4zmvvJQRqX4nlNQRgzBYkklDA9adH4IdQHtZGJd9.
	YpAXU8H9gxN3127AAlgl91U_X9yhcXsd2ogHQYK4LCsNuVmIA.V1gdipao9hzfTpuOlEGciqu5xz
	IpURsleQWaH4m4U76h98HdYizXznfbN9zXG.4ExDu1N.fSPWRXgURyePtx_ARpkAzoZB83pg4qEC
	v87mJ7nmlCi8MsrNFGRntw9.lRFiANDmFg8ZMgbiL54JfG4_zkSPzMwwm91TqRWaaptinaoKnGtX
	_tIaFvv8jZYrexSp_O.J63z8WUn1yr5gOw.pj40f2aJRVQ8ZvmrKKyiMtoR_U_Ow6JCCRf_U6glg
	ZunjvaZbjCs0moGq_Ck6LZtDwB70NUaid.V3XcczNJMR864SvVlv7adCEcw0TJ72xoE._pfjIuVq
	TFzLlozBTxSj3wk280JK44mjfaVll_1YupXfm6ln0g7m6DrwqlcTWhvQjh7lkJfx0uYdAV9aE0EA
	37uMhneMnHekJr4AZ4rcxCkl_TYXlcuLxrqz4NFmQJhMDDUaOnnLOrPoN9AuYfwXoBEdkKzwr6rN
	Rm.2CmfWunQdcSULERkVtgElHomE0ytxIfW3QmlZ9LcBorCNrI4FB6dMabRX6ApGYqnX5OEcZbUV
	maa40Xz6AIXRtBUUm.fbyyaBBm7q29V0IDzSX1EMdqtnlZ2Qngo1Y76kAONbKAON0fUCD_kNhZP3
	KTvc46yD.tMT8TrDkWVOHwNx02pgr85w19gl7dkyMSmPpUwZRX6kifiDQdMRa4ogefIP9MsBohJZ
	YLB2nzTxh2bsOEAjDGwIeI1KCvisnW3zfmLlMsFrwZcuYciv9fVKdm72kbN1FYkKfXd.nmAylF.A
	yr0Zt8GqyNWT.IUulX2sVzyKHUWIfw1B7toFUfdNnJCs6__F8uTliW56cD47lRMHjimvELf6emZr
	5TcNhGk_A6t.jeV1RuQb.5RCZBnkEkL61oiJQPbCAvAv22eqvKypEZrLfTrDNut.OjFMpWYG0SPD
	vbzvoCZkRCPqzDfxZIqdMp.zrqac8QTX.1l2jdfi_uroio0Lh8ErPAjZxI4KYEsDsE15b8hUH2zP
	DwKd8AFBqNym9PASSs0ZJNqjXe.kjQfwxcfKFOibjST84LsyTMV9R
X-Sonic-MF: <ashbreger@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic310.consmr.mail.bf2.yahoo.com with HTTP;
	Wed, 7 Jul 2021 02:47:51 +0000
Received: by kubenode568.mail-prod1.omega.bf1.yahoo.com (VZM Hermes SMTP
	Server) with ESMTPA ID 1ae9bd9791788d2b14d2ee450b8e6991; 
	Wed, 07 Jul 2021 02:47:49 +0000 (UTC)
Mime-Version: 1.0 (1.0)
Date: Tue, 6 Jul 2021 22:47:48 -0400
Subject: Suggestions for Linux laptop
Message-Id: <693C3F63-BA95-4155-BFC0-DFD43F0F1CB1@yahoo.com>
To: Linux <blinux-list@redhat.com>
References: <693C3F63-BA95-4155-BFC0-DFD43F0F1CB1.ref@yahoo.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1672luoB011041
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I will be taking a Linux administration class in the fall. I wanted to get a new laptop that I hope to use for that class. Does anyone have suggestions?
With the research I did some possibilities were:
system 76 Serval WS
Purism Librem 13 laptop
System 76 Oryx Pro laptop
System 76 Galago Pro laptop

Any help would be greatly appreciated.

Ashley


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

