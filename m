Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C83A43FE72
	for <lists+blinux-list@lfdr.de>; Fri, 29 Oct 2021 16:29:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635517797;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=BbYEU3txuzIeG7eiy22Mxr8rvcXotnxnB2+eNRjnS28=;
	b=M8+x9J++VEGTdZCLX2lspmPN67T4Hm8v/VdwAaE9AELV1vlIkWh+QxjKFPhou+vJb52q3h
	UMf9K7YLtW3XZQ2CtP1jkKCqCsT1WvjFSotqVOSNmJGxezHTHIlWTK5I6s6P04ltcsA3HP
	Wa8WiXtojiZOfQH7hgvIaQupf1jdVHQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-105-plvDvGDLOfiyAhKmdgejsQ-1; Fri, 29 Oct 2021 10:29:55 -0400
X-MC-Unique: plvDvGDLOfiyAhKmdgejsQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D529D56B27;
	Fri, 29 Oct 2021 14:29:51 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 09ED0604CC;
	Fri, 29 Oct 2021 14:29:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 889484A703;
	Fri, 29 Oct 2021 14:29:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19TETYI4017252 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 29 Oct 2021 10:29:35 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id CD5E140D1B9D; Fri, 29 Oct 2021 14:29:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C922E40C1242
	for <blinux-list@redhat.com>; Fri, 29 Oct 2021 14:29:34 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B13FC811E7F
	for <blinux-list@redhat.com>; Fri, 29 Oct 2021 14:29:34 +0000 (UTC)
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com
	[209.85.219.48]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-176-RXAsISjPMR2hF_IH47OB4Q-1; Fri, 29 Oct 2021 10:29:32 -0400
X-MC-Unique: RXAsISjPMR2hF_IH47OB4Q-1
Received: by mail-qv1-f48.google.com with SMTP id u25so6462750qve.2
	for <Blinux-list@redhat.com>; Fri, 29 Oct 2021 07:29:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:message-id:date:to;
	bh=opxNhG67grLD5Uz8biLaWDOFDPlBTLkPUyO7xrJ0gbQ=;
	b=G4M4NBjf9rmD5PQ9H7Dv+CUk93fxwNuo/OS3sZiSkXVok6/s4eEBl7e3+T4PZ72+oA
	UGY1SIWt7lTFu0FVIljUgGnlwXZHlVo/t7PS+kTqMU9BLSD70OY7ZP445ZGJqUPsbrRB
	eSF0OdL0d9wH5FMnQmNoXQaKKGyWlPMENov9exFTTSUmGHY7P7rAdzafV2DEKK6+AgCw
	S76vKMGVWBpoGS12RlUY24sw6EEIrDtOybfqxyzPn+XIY0NE9/wSrAnL0OsMXzxQn8FL
	FzGY0COrS4Q2qVYGaribzw+iNdyUQzUXnJMsAdaH+2dB76+e4Wm/eROoQUbVYto9EFud
	RRnA==
X-Gm-Message-State: AOAM533zFRPvSuTaE9erow1DjKt6byOOzI1ip1wQPPKVU5pvpMdkUSNT
	Od3s36w4hqoZVyrot0tkBfuOP6Gsm1MjZw==
X-Google-Smtp-Source: ABdhPJyiqTTZLhXMZSVvDuAFsZScKLeATROMqbSvzzKZwymbB74Y6hEFBaHpSKU+hhm2enVDH4yjCA==
X-Received: by 2002:ad4:4b26:: with SMTP id s6mr1922599qvw.60.1635517772094;
	Fri, 29 Oct 2021 07:29:32 -0700 (PDT)
Received: from smtpclient.apple ([2601:c8:300:2f6:d0f4:6b26:4f94:5da])
	by smtp.gmail.com with ESMTPSA id
	c10sm4444793qtd.27.2021.10.29.07.29.31 for <Blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 29 Oct 2021 07:29:31 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Accessible Coconut speech at startup
Message-Id: <E9D6D917-4032-4FAC-82FF-C1BF23682E36@gmail.com>
Date: Fri, 29 Oct 2021 10:26:38 -0400
To: Blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 19TETYI4017252
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello,
When using the live CD, The screenreader started at boot.
But a  after I installed it, I get no screenreader at startup.
All settings as far as I know are correct.
The only way to get speech is to go to the run window with 
Alt+F2
Then type 
orca
And press enter.
I reinstalled linux and got the same result.
As I was doing the install, I checked the box to get updates during the install. Could this be the cause of my trouble?

Thanks,
Rob


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

