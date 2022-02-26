Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 02A314C53D3
	for <lists+blinux-list@lfdr.de>; Sat, 26 Feb 2022 06:24:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645853044;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=V28NJE6f8O3ul5toftonTuCWotbmit7KmyMHjT7j3/o=;
	b=OLwnOFa/FJ2cjQ73w+Z98g4pNq9VtVpt758tfNhfP63OS4G4BElaP/VH4QASJVkvXlV0et
	bBGqcSdQsTvdXaMEiAhtaEjgFHTDKWX5/7fVXhh72nVfb/CrzEvr82pB2x/i9/C3l/HyQV
	haucI9wcA4RZdj0stWq3dw1M1txwy7M=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-593-lR17ZchOOxewOmidtvcy1A-1; Sat, 26 Feb 2022 00:24:00 -0500
X-MC-Unique: lR17ZchOOxewOmidtvcy1A-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AF26E1854E26;
	Sat, 26 Feb 2022 05:23:53 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 18C4F88B21;
	Sat, 26 Feb 2022 05:23:51 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2058244A59;
	Sat, 26 Feb 2022 05:23:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21Q5Hmji011648 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 26 Feb 2022 00:17:49 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id CD564401E4A; Sat, 26 Feb 2022 05:17:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C9A43492C14
	for <blinux-list@redhat.com>; Sat, 26 Feb 2022 05:17:48 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B02EA85A5A8
	for <blinux-list@redhat.com>; Sat, 26 Feb 2022 05:17:48 +0000 (UTC)
Received: from sonic313-15.consmr.mail.bf2.yahoo.com
	(sonic313-15.consmr.mail.bf2.yahoo.com [74.6.133.125]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-543-TyE4cVPRPhqvJikkwc1XDQ-1; Sat, 26 Feb 2022 00:17:46 -0500
X-MC-Unique: TyE4cVPRPhqvJikkwc1XDQ-1
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1645852666; bh=yxemvN7qTGf3+6V/nqDCPseQEoRM5AE0WBXraNV0A0c=;
	h=X-Sonic-MF:From:To:Subject:Date:From:Subject;
	b=kZH/nF31mSG/mu11b3IWb4R0OxJU+vBJjcAV06+d4PM+7YYPWNXrgn5Wj9AdNsodIUIKBsKZllCxNKy5w7CYRtkFefA8TNdGTqOwTIwb3+ppdmy6BshayzwPQ3/g9l8xSIWLHUdOw790GPslNgl98sTQhaXDxmV6heNCKI5noCN3NcNvHV65wmU4WXkDpM64hDpQXrtgakDpwUNpv3rczvOexSbjYwhNbDFU5mDUw5ge++0l0lvqDk5/Nj1d4CzrERHSQ35OdYS1lSBq5Bn3apap51NSZ4XYcVzoegUDhrT78Ot76Si9j5l2VnhlBdL2fqyl0Uq+rsBkyNdZvyzeuQ==
X-YMail-OSG: V3zu.zMVM1k_g8ZhMs0Qo5T7Efpd.7ixpKxT0eXKsSz7D6yvIL9PlLS9x0fwQE6
	8UCL35tOmVZIMdBtN66wyyQlfwuR8lHH50vlEbjNwANEE5vKYfXsui4qw1DvgULmReNAfNKQj2JI
	bgd87vK5QNx737P.jknJopHAyZg7Tudmd6ldwbCCyITFH3EkNpagO.nnDqF4GcLtZttc8QXeYqyK
	xTcpQaTnxGCGoVTSwOF1z5ZV8QOwzxEHifYABOX5mEhASeA3NABnYhj8GwVz1J50WquDBFmWZTbz
	YtqZOZi32s.z2gLJnI18pyB7iz_Mh9U.2_EGuH.iDYl5FSs9q4zy6D6hpzdP69KUnYhUUbFCPe3B
	Z8wDZa8SeWZwHSiGzMmiFRKLUR7SJHK_7bR4FrtiC6QU3NKWP3msFUce295deAUcxr2xJU9fOvt2
	4lv6zR6mjfLM0OUAjEUTmpkJUPr6EvVsYdWyFYst2j1w2cW5iozXuxSOVIgP4VCR4QFhp1XC.tQS
	4VzSG6h2qYUgjBo3XnCieCRe2cAQqK7b.rmu2FZummi8E6nzYolzCMWW25zIvqK3ctjoGFFlhLkq
	xmQAccq37PbVhcS7RpBmw_njE37YxvC8zlJRNNzpPO_7Gt5dZDYTYJV6heJST.sPHVT64T478g8e
	8eVN63phvGbiP4CPVA.SpdzJQckqVDqZwik0kFmDAYzJZzxrUsc5vxd0RQrqEh1Oi2JB_o_7OAeu
	Upebq0efEitVqUExSOUSTU1UoV6bR2AQAvAqjJj4JOwyvlCp1WYbvBJ3Rk8vGKxeWqJ9v_DXU2do
	5Q8_0TgUg3rqaxUvz3G2aK7dKlY5gGakw_QNq5IvN3eyACEEg_C5Wl.uJH8_Ima5b3TGKPjpZiQP
	XsGLXN_flqlkmBnQCZ2YrHYzoQE8hUkPHtwv9wOUsSibXD6319mPqAqpeVbkDaCceryBYYcMkgqO
	EXEMppBljSBGegcX6W5xAm.RsFEdDhb3GBwDe6hnJCCN3xiGvPs19uKpyufVow96XAOlFTyPTRnn
	mF1OPb4ws4Y6AMX1QTDbeCIR6vGwHMwORV2Ce6ZJmmR0aU9Ix4I51xVVis_5iu.VEEnRRS8K3zob
	pN2iLE1WSyacGrizmwLlNA4OAIxrJNWfytBaHqh2E3QJvx5WvcT3y5Ef.zXmYOfuQVrWBMiZ2hPa
	26XXWwGuREWbgZD55Mj10N_ArKhnN0XAMNaqoZo_DdZfYLEAB3rjImk.bnfZxhLsKkPd3gtopV0g
	K0y6Oj054QzMyK6rY3TsKOhcnpZr9aRlrRHaTq899fOYZ_zQ_tf8KKecxqF6EQX.dv2HCiRkoJZB
	zwQEx.HUJ2vVohVdLlvaKCPWiM9ckNI2zUVcRfbgRpAe_74_X.d2Rea7JCIxHMkHTJDhvm3WpQDo
	VjXUMPV1etR0F1ywFcaG78ZSc_ZO9xMg56Hax8Fmgo92L4mo0FpQEDkSRZ3AgsDRkMiIkhyNhi6T
	wI.WenbJhjFkeONUao59wLf9P2oevdRBtN_fYDQWqnRLorWiAR0uRhcRj5PXmjBN6I10SnpGWQQo
	_qg3Txddxq4SBc.33onhF0YtWgk7QYQaDge0uZpznJpZIDh.C3iBvTh.6lthyxeo6pE4_JBIJX8e
	KUPP6ioB9u24x_KADC0pTSTIgMOFJs5DlEy7iVdIvvt87wNiLmwDNub0k_lV3h.5nLA.joM3tour
	AABanfAkbwFNT8Pd.P1PLRuyLpESUfzaS247cKfpJwqq285WXlKx6pPUr8BShiP59wkpPyO5Ts0O
	JgiDNb6HlDoV94dPefwFlMNQqfmUTKpBCfFJozUpvcT8D6NTXj87L0UH5c8o6rX_HmjcnUtg8LCR
	Zf7vdT2tVHri6njhBZ4Vq8x7AXxYkaiVI5mgIba.yaEQxuPxrogJHW5fjcTz9IVzWg3iWihJXcOX
	DgKqbRZJT7VkedPWIytA.jsgCoEWLiv91Y4Rvh2XaqnZmCmSEZKmFlsC7_MpgI1PFInR4K0vzNbc
	ht.PCPpODiV.x7Qox_qAeknNIVp8loTHtlGjVTdckpkuvoqozbW34K1vLQaetEg7YHaXRDYxdRb8
	lHAx_JHnpv5mE7YAIqk.wY9bjQMNT07fNKdLHrb1igZ9P1qjHuSRiOjuhvK0E9w--
X-Sonic-MF: <ishechinyoka@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic313.consmr.mail.bf2.yahoo.com with HTTP;
	Sat, 26 Feb 2022 05:17:46 +0000
Received: by kubenode500.mail-prod1.omega.bf1.yahoo.com (VZM Hermes SMTP
	Server) with ESMTPA ID 662ecf70d3b76df1438ef5a7f7f0236a; 
	Sat, 26 Feb 2022 05:17:42 +0000 (UTC)
User-agent: mu4e 1.7.5; emacs 27.2
To: blinux-list@redhat.com
Subject: Do we have the sleep function in Orca?
Date: Sat, 26 Feb 2022 07:12:38 +0200
Message-ID: <877d9ixl4s.fsf@yahoo.com>
MIME-Version: 1.0
References: <877d9ixl4s.fsf.ref@yahoo.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi,

Is there a way to make Orca sleep when you launch a programme that
self-voices or a  game? Even a plugin in the SOPS version will do.

TIA,

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

