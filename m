Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id E1ADB299C51
	for <lists+blinux-list@lfdr.de>; Tue, 27 Oct 2020 00:57:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1603756619;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=d+z+tPV32mnaPKB3WAveuheJDFKanfhobWgYLTyPI4M=;
	b=D1Ka8mzdRIUvZxEymLWQI199pJH5SCENmnE73rXFldViA1Mtf+/zsqhiLUqXMdLSlxxxzx
	47pjRD2f4WhVh+kMpMgFiT30czs3lDrT0sai2iz7s6d6UDiepEBdQJWP2c0plxg4V2JOHI
	6l5YxRzNbqjgPBOHAMZvw29oSAZo62U=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-170-ijudJoZLPSKTjaZqznWG_A-1; Mon, 26 Oct 2020 19:56:57 -0400
X-MC-Unique: ijudJoZLPSKTjaZqznWG_A-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8519F1800D41;
	Mon, 26 Oct 2020 23:56:53 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A90C15B4B1;
	Mon, 26 Oct 2020 23:56:52 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 53C9292F2E;
	Mon, 26 Oct 2020 23:56:49 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 09QNLuKw015737 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 26 Oct 2020 19:21:56 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 573BC110F755; Mon, 26 Oct 2020 23:21:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 52CF8110F753
	for <blinux-list@redhat.com>; Mon, 26 Oct 2020 23:21:54 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E385E8007DF
	for <blinux-list@redhat.com>; Mon, 26 Oct 2020 23:21:53 +0000 (UTC)
Received: from sonic303-3.consmr.mail.bf2.yahoo.com
	(sonic303-3.consmr.mail.bf2.yahoo.com [74.6.131.42]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-320-Q636Omd9MfuYOZMojUJeYA-1;
	Mon, 26 Oct 2020 19:21:51 -0400
X-MC-Unique: Q636Omd9MfuYOZMojUJeYA-1
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1603754510; bh=GHASb0EdsnyfDaF7cQsDsiwxO6rS9TUqR+1qYjUOWmx=;
	h=From:Date:Subject:To;
	b=PEFz+e2LwzM4nRMmIZHOThXPJMAofikGkt5k9B5xBKoO3m0+11gwWCvq0tslnRUM3cwRxCBKuNHlnjRcq1eCDncX3PK33JbkYkJzcoLonlrISpOcMDuIyVT7QUmgOlgqv8beCx0K+3ZnVJjV/jW5Dh4VryCG7Td/xPNZ/th9glzkL7uHESxFYxLbQPSaWrgK+fTKVtclLmE/kE0ACfZ+v/0GPzYN/eOWnN632fdW5AGm/NHob4I+8KDGm7wg+mhEREKnBVa+JLPRAvB3YmsscLhcWLO0VgolMap0wByR2esOTiv0QYXPyxPYg+SBFSpMns8OO/UeY3CxeO9wuUkyyQ==
X-YMail-OSG: 708Y0hQVM1lLqGTgC8fsO84LGpwD5YIgbXYQ4vmRHAWxwVlQ_ug2Rwe1rNdAZSE
	eklu4oV1z2363eZ6wYp_F._rnks6gzv523iieYPZlFZ8OpCbAn8n_rMNRpTPimjwkqXcJRX39nDj
	pIdaqNpN.kEi1Gs_M.v7K1yEj9T2vijb8m52KO7UYbGyBLNbNOb1UHxvLdYbqiIC7c7QeDg8YoXZ
	O0l6GVmPAv2m9NPFIMzKi8BXFV60xscIUae_9Z.qGRitALEsMNys8KcAgZnnI7s2HgTNZOWO9kAv
	RLHbKPmXeQRb4TQ4woxyQiROZxAKvsIeEdLqQ6XRWGKdRJYBKUyZnkSpA8pmJFH5kKTUWfjeJZfn
	vz_QBwbbj3AtTI3sgyseGfz4u10FejpgutKgA63iqJEFvHs2xeo6V4qvBrzpaKMXQ4mLMLIzio3c
	QtAPls9DObESavVH2X3DReiV80l4K5penrlLMAc66HDUrCewy2XNPQDRY88haChyx.XYW4GSnoIz
	0VnAqurxzp7wGrqjgQGmDkfkOjBr2fubQDJz0PhAvx._QR3iKVdQsmVa1HA_peUSdh_n6qrBvAm0
	sbxKQlnTCdytul8_QFuFyT0tseh8wA7s9Q.17u8OMh6dU_260TWxoK_nJ0Z_a7MCm8qYY4gzyJy1
	6.IGCHccpdAj_F4QpM77GxGft8LUoK.3sczfkn0vZJD_TQ7_r7BlbpD7vkWa6dq2m3RDeJSgw6o9
	VcmLFzazOfqfCEqgb6hWVV0fQJjiGpgKKLcToWT.dwm1_TfHZOJHtfJdW8qC.5CQtvMWBJImJ7fw
	UfXwWvMCA8EG_aPghgkpu5_G3q0wXreIXyU8ORv6pHBroj3L6woe0wO2VK_2NVv9jbv6WAnWcN4g
	DCEYvrgQR0D0jdnq0gk0Pu.Nr2C_oeePXboGA_6E9VqVH9UPonJdgZ4Mjc_Gh1On9I7pnWsMn.XE
	iKYotzyuqiGX_Hcl3IikTC6IfliD.GUSfkk1VQeEG6364AYLYPIHGQNJHTMQmJox5tO0z_S9u4Z8
	fwx.48vZ78TpPsWc3i_kQh.b0aK86gtTtA_wQmohEgifrQ5RB0S_LzN1ceW2vfQcZJTlWIPalkfi
	EnVYH6eab90Akscabuodo2Jzce4DkyDrsrbrMG8mySj0vz01qV8UP2IPwLyUnn.x.6cyNm2DRSQk
	1mNZXtzycLrYhFPNdmbL1CnEru_V7EF09YG9faur4MVQnFXY85d1LgFiV5KJ.MV6AC55hr2_vWUH
	Xsqx6uChX1R1EhfK1OkzbIvkmeJqbpzbMtX51WUEa8zDFpgTwRrBfN7ArFu1s2T_w73AUvNacTJz
	kN9.mKCImbWolH_Mq4.Ca2PZAkWlQqVNqrHl4q9xKv5qThvmgBw8yMPZsl9a4056uYwL5gm5wBtZ
	vVNDcQA6EYu3fcH_7LA_1kpN7pwfWPtbKmXXUApqmo0IldkdaOB8sjeZJ6.paoVN6ecWzjsNCNVS
	QJUkCrL5WSBW2LgV70A3GeIMAITzhT71hiX2cez3iF4Qp5iCHhwixYkOspco4Ipht8qasFwdEKei
	UjaAkMcoPwuuEmR3AlURw9XtFUZPrFPtFEw9onxDQJ4H66XEtAgFvrWvaGhu8MqH9cktb3_PbztC
	OYEr6tj7Vppnxz.UjrQjVs.uo7ODN82y4Pt_fd94RcgOujlVAAhxDxvg1z3ytD2aQNuGh2ilvGSt
	NEDc6VnQZl1v_2uIMvpKgjw3H7bC6k6hy2PKsq5L5o7qELncDxD8k9l_2HdGE85Uli9fZZGD3h6B
	Xaerl91jQtPHldtWI2dDy2fLb483IM5GACu3ga7IbK2ymK3a031oKNyNee.dzzP7htfMrG.xFG7t
	3UO_xYsBuCf5Yr6bm.NdfySwQ6K_1FfoZOIQkQha1pchpm03PNu2nYo_ZhSb7uXicEwxZv6NOhx9
	8b21Uvyyk6fddb_iWKRpxtQ_D7Md1DIarWfDRuVnPFeJVLaXuLy4lKFvBdEMOV92u4yaPsFLq_mD
	nwJtBIenEIFvoDfRTn9k7hZNQ3l9ghFINpQgm0JjkzYoNyxyZsB30u8Y9xGWdmm.rpUg11KZLwm8
	EBo6_IMvtMsXGFQT0eDYkXxMbQJ5V.W0itKSRoakAbtwzckXVXiQLzkNsW6xVX0p938JY05N.riP
	87NGwUw9_cCpUVe3WC47QaqF9ZuF0_yO7g0uC7KH5rD4zHEE3V.oORfpGdDdNP6GlKXE9a43x7hc
	BugRA6Dr3g31kV7HNJoqttIPkZ5.IZ70bMK27Wqb8HdZF7LIZWg.hTPToXc2fqf2LJybQkoojiBB
	HHZDCiWKknsOcNjegcfAN67.mfkueXbKGByiEV_7Qf0wjDfVaokdiZIarR.MGQyZ4c7Sm8gdpj08
	0Ny..E6qDS5UiFRit7.hbe3eKnf1pbcgTbOhdvSB4kI.G2I0LJXOR3QtmxMqlUicb.fgemnJd5lg
	4DqGNUUOM6oZK.xnMzv6zxskrZ.zFUpvuqibVoTp2Zs6Xapoo6wr8nJHBOH2N3iLxImsuPppm8ap
	zXo_5QOtj2_pehCI-
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic303.consmr.mail.bf2.yahoo.com with HTTP;
	Mon, 26 Oct 2020 23:21:50 +0000
Received: by smtp413.mail.gq1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
	ID 828d82d71319acd61ee4d059e55abe03; 
	Mon, 26 Oct 2020 23:21:45 +0000 (UTC)
Mime-Version: 1.0 (1.0)
Date: Mon, 26 Oct 2020 18:21:44 -0500
Subject: Working in a WS with jaws
Message-Id: <07C9A138-5900-4138-9663-B659A1DC7D74@yahoo.com>
To: Linux <blinux-list@redhat.com>
References: <07C9A138-5900-4138-9663-B659A1DC7D74.ref@yahoo.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 09QNLuKw015737
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

Hello, I am working with an EC2 instance in a WS and in the terminal jaws will not read the entire. Terminal. Terminal on my braille display. Terminal on my braille display and I was wondering if there is any possible way. Terminal on my braille display and I was wondering if there is any possible way to do this. Terminal on my braille display and I was wondering if there is any possible way to do this?. Terminal on my braille display and I was wondering if there is any possible way to do this?
Any help would be greatly appreciated.
Thanks,

Ashley Breger


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

