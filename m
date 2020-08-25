Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 5C421252229
	for <lists+blinux-list@lfdr.de>; Tue, 25 Aug 2020 22:48:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1598388531;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=3gHPPhBdqF4wwbC/FwKkS0T12TNd1rcf+G9NDLPHJRU=;
	b=Vhve0U/Qi15RnT0X/Lgosmt7llFeBPFrrpyAgtvJU3Ew9BRVCeoikiVeYXDVLAgFihFnp9
	uiAhhQQeYgNAOhgUrWfcY7DxD3Gc7reTOxuLNo/md7fKozC2VC9hqrKCvf+YUYbD0XDpGW
	d6NSrlyK9Fe8zMaBXUpZD/xRSEdRacY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-539-iGYhy1DCMP6A7wuvrBtUwA-1; Tue, 25 Aug 2020 16:48:49 -0400
X-MC-Unique: iGYhy1DCMP6A7wuvrBtUwA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 04F181084C91;
	Tue, 25 Aug 2020 20:48:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6072F5D9D3;
	Tue, 25 Aug 2020 20:48:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D2E5F1826D2B;
	Tue, 25 Aug 2020 20:48:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07PKmXUi019646 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 25 Aug 2020 16:48:33 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E34912166BA0; Tue, 25 Aug 2020 20:48:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DEC8B2166B28
	for <blinux-list@redhat.com>; Tue, 25 Aug 2020 20:48:30 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5703A80096B
	for <blinux-list@redhat.com>; Tue, 25 Aug 2020 20:48:30 +0000 (UTC)
Received: from sonic303-3.consmr.mail.bf2.yahoo.com
	(sonic303-3.consmr.mail.bf2.yahoo.com [74.6.131.42]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-74-0sss1FFWNHyIE9QW-pQN9A-1;
	Tue, 25 Aug 2020 16:48:27 -0400
X-MC-Unique: 0sss1FFWNHyIE9QW-pQN9A-1
X-YMail-OSG: VhF79BMVM1kFZzksSG.ookkobNPQMd4iaPeWN.iIDPOwqsf3HegqEaApgjSykEd
	vnm5LFle0VFXuQe0fQE_qfB56qk9t8pAtj6cWSNxUU2Xy2Ge7C1z7jikgWaIhTpsp4mvhtTULBYe
	1d_tJ0s3Zy1YnT.N9CJYjB51i7aQRuWv8jKvWApkXTlqsZw6vdXTI7ZwuBHnu.6a6DTAdIs_LTkC
	qU6IqUiKS5hYmYY5io.SgJVhqr2UBXFy07j5sZHxDCE47VmcSJ5d3XyEsiIBSzJkrA.LlmP5_qwv
	UyPQ1tqRdQCPrb4s1_snskwp3hl3uwQpC7rMY.sEx5p1D4IiEBNeIhP1NSxmw62uDaVPD_fpywwa
	BKgn5lbfs5u_de9yntzePHYQsqy0ZTgr7QXWSUklEVUsV6TZLptCexJjnRpKqV6Y8jeao1mmHMMu
	JaML85kbqgtr0KmEQfuWAVGtq8n7dO0xL7GcvJ5TTkqUTbxrU8BoOEA9OMtT_vqF9U3ZBXJ2LnSj
	rwQG3nZQZqs4YotJSiDcbkg.fv.9Ic4HtuURWji75_HFWjvIusi6sMJvOg75CWeqLWrK5vt.zg8b
	UEzeBpd9jASNSveY4HLVp9QSbjxuhVXzr66zMBdSc7H9BN_5fUJg32ObdkmAkoBz2oUaFJMS9WAm
	zMYZSTmcu5ElzObfcPWh2xJStQRoq4kpn0fVqNS6Y3pHV5BnvjvRovOC4DWEtWvpa2qBklf3J4v2
	RJ4vFohYL1cQj.EtHFO28790.tLrQOy6oqvJKGJIIKXWJ243NQUxfd1yE7HIiNu2K9OMftP8rMJq
	DoFtyhprTru.gc3a0VOJCAce7Q9kbshRG_qdbHGOQLVAtPd1yvNI5zceP3c8W13qqH3LUT2loH8n
	_jwJTjER.MKV11x_zEy9qbXiKnDe5bF2B48n68MOjXOrLXZK9cF7IVex1CT_MfyxBF5EgRkpyhx4
	6c1IJczk8bbXTnXrAng2KT2seiVCnbRhwdrzsbXMiNtd67ZTVic4vrIgaYaKHK5ljzd_FSrvuVtp
	FUBem9VDBUBi_Ldy4McP_4QcO0_nRUjSd85CgNjqD9rz2pUC3AafRoavfS2F8nfwOrmR0HSZWqko
	y801BzFsB4o81KfJhPZVS26l1oVSy1zNgDEmkJmCxHnFHKC.LhmPjKuaq2yTzFN_kElULkUmes2j
	Q9KShWCIQdluSZYwE9HtVAir.cyE7XT8EC8SKgP8uoxthe7El4YS_MWoqLMCmZgTNC7AtnE5iA_H
	E0Ysobs20RBHwjfWWwF9Xp3eAd6iZCnYnLpEVox92rrXAmQGbWVlITSuZyP42FB7VEXoStEuz74u
	GF4vRGa2Q2Dj7GESx_JjwJZQcn1vC0yn0_8_9MkQj_l18i_CnjbkwcRHqDy7acyzCVXI8JGKJZK4
	ObU3TJ4KsyBwfNt1SIknkIzwkrb4FTVXpA7EAYTAYuvfukbS79wOqaycMYInEeIxSD_eXHFsHVzb
	yPxE9ZcIdPm_FcpllYQwwBKfaYr6W1VdGphcEKceOGpBRPYbwsowX9Dn0Qt_cVuvWPmZTnbHQgg-
	-
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic303.consmr.mail.bf2.yahoo.com with HTTP;
	Tue, 25 Aug 2020 20:48:27 +0000
Received: by smtp424.mail.ne1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
	ID df906b2b789172eadbee99ca87f21dd0; 
	Tue, 25 Aug 2020 20:48:23 +0000 (UTC)
Mime-Version: 1.0 (1.0)
Date: Tue, 25 Aug 2020 15:48:09 -0500
Subject: Hello
Message-Id: <52A61F6D-F5D3-4A8B-86EC-639F76F1D1D2@yahoo.com>
To: blinux-list@redhat.com
References: <52A61F6D-F5D3-4A8B-86EC-639F76F1D1D2.ref@yahoo.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 07PKmXUi019646
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.502
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi guys,
I am taking a Linux course for college and I join this list to get some insight about what other blind Linux users find most helpful.
Thank you for letting me join.


Ashley Breger


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

