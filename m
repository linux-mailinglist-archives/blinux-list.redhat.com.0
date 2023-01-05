Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EDD865F5FB
	for <lists+blinux-list@lfdr.de>; Thu,  5 Jan 2023 22:43:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1672955001;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=LxeFTSIlXqGqU+LBALLyNUGMa72lcL8Ggs0nKCXgQQk=;
	b=SxAc2CtazBP/Oos8iA7cZnudtzDXw6DksaKAaBZ2siVV3h61MvprsASaUqsZ+8w2DyfRN3
	HzaTnQPEr9xHIcMV4ikeTzcAxttx3a79iLA5EkxkzeuNpPRilON6jM6C2HQTv8IWVIn4zR
	z2WRv2E4ZkbRydi3aMph0RxyqgEovBc=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-607-FNeK6m7WPi61lr7bwzyp8A-1; Thu, 05 Jan 2023 16:43:18 -0500
X-MC-Unique: FNeK6m7WPi61lr7bwzyp8A-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 09851183B3C0;
	Thu,  5 Jan 2023 21:43:17 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 59B8753AA;
	Thu,  5 Jan 2023 21:43:08 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id BC0B219465A0;
	Thu,  5 Jan 2023 21:43:07 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 dalen.lamasti.net BCB5F14C1719
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Speech-dispatcher problem
Date: Thu, 05 Jan 2023 22:34:46 +0100
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.1 (gnu/linux)
MIME-Version: 1.0
X-Spam-Status: No, score=-3.1 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF autolearn=ham
 autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on dalen.lamasti.net
Message-ID: <mailman.3123.1672954986.2515665.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Lars here.

After upgrading from Fedora 35 to 36, I have no speech in X. Nor does
spd-say hello says nothing. Pulseaudio is running as system daemon.
When redirecting logs to stdout, I get Error: Can't connect to unix
socket /run/user/500/speech-dispatcher/speechd.sock, connection refused.

Starting the speech-dispathcer server manually gives:

Error: Module reported error in request from speechd (code 3xx):
300-Opening sound device failed. Reason: Cannot open plugin server.
error: file not found.

What does that mean, and how do I fix it?

Thanks in advance
Lars

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

