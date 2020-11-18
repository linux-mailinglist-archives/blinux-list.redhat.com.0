Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 1963C2B7588
	for <lists+blinux-list@lfdr.de>; Wed, 18 Nov 2020 06:03:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1605675827;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=wKjbZt91aD/5DzzIzi45C5BDZX6C9TGEhgI3MGisrzc=;
	b=Psydjps6/hI3XS07XN2TqSurOARTRVHMvR+P5rMJERtmHEyGzRZjcXytz/XnXPQ4UthmQL
	7IZn1U8Hz0ZH08zDqGd/zHmbnEFnT557kw5lWTkTel/PjJozxP/77XsJtLdcq4lOWsPs+R
	9/rwfB8AHhaeG48Ay+VSERyRcEHGBu0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-487-lEMNyT27NYaB6JVIzgDFBg-1; Wed, 18 Nov 2020 00:03:44 -0500
X-MC-Unique: lEMNyT27NYaB6JVIzgDFBg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EDC92186DD2C;
	Wed, 18 Nov 2020 05:03:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1380A51512;
	Wed, 18 Nov 2020 05:03:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D9673181A06B;
	Wed, 18 Nov 2020 05:03:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0AI53WPG025358 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 18 Nov 2020 00:03:33 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id CA1D81134CD0; Wed, 18 Nov 2020 05:03:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C625E1134CCA
	for <blinux-list@redhat.com>; Wed, 18 Nov 2020 05:03:30 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7C1771021F63
	for <blinux-list@redhat.com>; Wed, 18 Nov 2020 05:03:30 +0000 (UTC)
Received: from sonic302-1.consmr.mail.bf2.yahoo.com
	(sonic302-1.consmr.mail.bf2.yahoo.com [74.6.135.40]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-38-BMMGElEgOra3L9_YsyZUeQ-1;
	Wed, 18 Nov 2020 00:03:28 -0500
X-MC-Unique: BMMGElEgOra3L9_YsyZUeQ-1
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1605675807; bh=IUl8D0sYeSbR2keS+A11kIahvoUInkJlgDbTgsR5qYF=;
	h=From:Date:Subject:To:From:Subject;
	b=sCQ8iMnn052dpWq7Lg+fCA7LGBeJBbPOQgBO1ppdbB34rEy2EEJyuyIo32qU+ukfT6m5LE+w5I6h1T1Ewm5pz2ptXTv5sXo3ODqG9uaFljAxHw/HtURWXYVBae80wwWFaxEpFqtQF2e9IGJT8O9NqCeAUBfC3JFKOptlK0v2cBxl4ocEFO/VTSW4mRBWg40jMUsM1p9HSbdnGEGXT1M6GnebRvFgqXCQ4kZXJ2p5Jlp3UyaqKPgWo05AmlyN78qt9LldslvA/87Hpc1VIvBvAbzE1k6Pon0V726NkWKXTxGA3kBDBI48iUu+ZP1yuI9290SEFKucSCeCYLPE1bHgsw==
X-YMail-OSG: HvbcDowVM1nkwOh5_VqqhYtwCkCDERYosxA5OOPmNkiyHbafVXwC0GBqnB1pYGV
	UQaRBacNFjrNimqWM_Sha8ngUsMWiiMPzZ4kv3ww2w5seTc5IJmw64jBOjIdvXhc_IMFBGUDNgjW
	gEdmhuhgdZF5ceLbD1ymD8Wp7G5QLIJYUCeYYSiZHSkjeI60FqGuu3gb7UOkTR5OzdjhxTevfTtW
	6C5L0M3y_EweLHrf7qNFr7Aj4V_ipi0_fsBomo0pRsjoqmE3_hwQsu8sdip36A6p58eZ1CX1HCBR
	Iel8Qlmxw6420bzdQlFHHgSHRZqSwq6ck8.vRppWjD8JSFi_ny_yndibG5CVeJXuXvwnYbikmMBO
	HAjM6FMmYNIEoKmXttuwDby4h7TkPPf9DJMX7Q1B8_iOogx0NVWUxNG.AXYTu06hVNE9j5Lch1ZI
	AqZk2zTRKQ8HRvFP5N88cgBUgkDDPHKPtDjlS1oqD3HF.1S1npP4345ApzShzHIvVkgWQ_zWhDUx
	7wGV2P9oer.jg9nqAblzmyHHOefPga87xS2Krufn0WfjnIk_XQz_89YdDpR8PEldKnJIkH.VulDA
	O1fTzQaXHOIzIiTvy4gMvPWqHWBZ3ZgRLZ8IDz3cgv.HiHEfIL_9MoRSKUFoxxS2V3yHBRsc8Gj5
	IOtoGCUth6PUCUQLihWKvpJI1rusixhwBqOP7JXYvD5ChMRDlSuq3Re3NWoeCwyd1YwQWncYY0wO
	LW1SIXGnkr0wAEpZtlAJUXTETP2hjSEOgR__uDVS41NCf2M6iob_BV8QOOzld81GcgeagG.KtEU6
	kNFkV1p9cpUC_UddVIRwotnkpIH3_NSymbF6klR8RdzonSXK3B70aBVaLZXvw7tsW1d7JyP5nMhG
	IknPriglEu7yBFuWfJygxWwgTSocjRMd2mZDIMlJuVB6etZRt9m8lBNKsKIr.YCwSrFVepyYTojl
	9pamn5i3QGkYwXhfDkVb5VzTHXWzKCCakfSJdoMve4k9P93I0bPtN8gzVM5JaqyaJmaF0MDLd.Ik
	jabXZwVCf_tZN37iVRlDWXEh2CDO2AELalEFetcaDiCyoCSaeh9eRFWUdNBue5PYrIoh5etC9IbL
	vpCllYujidvsrInhOgKb_FYkaUAYy2_BRw0c.22K6K9pH6pKAzjeGwd1X1OU4T_WQN2i40MsNySn
	AqUtHGDKDXk1JT6vLb1kKl.lKGXMPbUFtkFladwyxg6iUflHmL6Pm8u5bB0QqQz31bFOqXmagTHq
	JAY31D2GJa_3w60_5Fra3jpBiRBdaFsowf4Xmk0Q_qwZMGkpt_1hVMdur5vmM.I6kpFuG0cG5ueI
	Bk6CBhr709nSBo2pKfv3_8nHEbXOb2UQryHUFzeTnw4GPK7fdk1mxpH1r8_P_1rlDo7dOkd9gMOY
	7C1sExpEvL2g8Cswh1I89.neR9hahOj7UohMRHmd6gY8pJhJHBgsaxF2ok9Ff0SkSXm6OhqKF2aE
	sEWPSF2uv2WEGwilatzLMKwsRLZ7RNZjG3JyTdtMbJRwTkjG.sNE3jl6JjtihsOumeAg.Yo_N1T7
	QQM0ijcl65vq5nj2DulJMyhCodtXkul7YoT2qM_oy4tPvaFrRFWWvHNbZQy4Q6WbbhX5y78JTDYC
	DQ1dtOyPN9cFElzsEfDlFw_OPPpdDhOt.bFhtKddiSfGijA6EFp6LE2f2hlAc8fvELwQ3RSCPJLO
	nvPZS9_9XyeKhvEuMjvGQwFtezzh9c.le2PNcsRp6WWe4Dos1emih3kvGz5QWRP2VPjJQUXbeS9A
	DWesov9Yjl.PscyWgtrIMhHIiSnCidmspkBOgO5ZnhQ5JfgwK2BRk3s.fgD9lQFdDseTGBJPG.a7
	Sgx1Ilhg4Awg5Y7IUGP6kL0MymwPqNHWemLLVOKHbPN2c4o7663Qx.e7mzB8Wp15pqPfeEGE1M9h
	OwfQQZDMh3EHAq1aFWhcPyZp6VYzUBKGmr1.qhcYgK13zVW3xNNzP9Eb2DrFIeAZq7yV71odKzI5
	TrvlzgL15RqeChAxr2R2IDxMPyzcjz1NdUiYq3XmeuLqgmdrIufktYk1augnHW.HMD9j.jKSgosf
	OpEpOHm5psFJ2t.G0V5a0Z13R3qVBIVreTZ4fdx9OwTXTHJ33PVoqXHbcKCtVp_q5JkEqTNdj9jz
	hHjTvMrDfcHkxBN3KjYNwMWAyC7Gkf6V.ffttA9wDFrn9dXxZ5fIsSw7dbmxYNHZzcvfyYD0gRkF
	ZW02iI_srVulTzikPiinBErVZIaPJbwU2W6Gs6opiWmWcxgRsun1oW1p7DEDKsV3wCr_aFTHRlvw
	Mx.GQ40_KJgQCkmCGRierSWiq0w_c
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic302.consmr.mail.bf2.yahoo.com with HTTP;
	Wed, 18 Nov 2020 05:03:27 +0000
Received: by smtp421.mail.gq1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
	ID fa276197fabcf8a75aaa520ee430db40; 
	Wed, 18 Nov 2020 05:03:25 +0000 (UTC)
Mime-Version: 1.0 (1.0)
Date: Tue, 17 Nov 2020 23:03:23 -0600
Subject: Bratty
Message-Id: <41F1A979-146A-4091-8CDF-6B5E823D64A7@yahoo.com>
To: Linux <blinux-list@redhat.com>
References: <41F1A979-146A-4091-8CDF-6B5E823D64A7.ref@yahoo.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 0AI53WPG025358
X-loop: blinux-list@redhat.com
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi guys,
I was wondering if anyone knew anything about this program? I am trying to download it for a class that I am taking for school and I am a bit confused. Any help would be greatly appreciated.
Thanks,


Ashley Breger


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

