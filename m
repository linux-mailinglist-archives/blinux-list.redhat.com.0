Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2104C527719
	for <lists+blinux-list@lfdr.de>; Sun, 15 May 2022 12:42:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1652611368;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=s5sb4GUYA7b0YXIH9qXfLWvx7mKI6mp7Mw4KA5QywAc=;
	b=iAOwJU4gSHVoJZjVP9ry7qhe54DaUd5EB+sh7qTztqaQcsUnez5atJoZbLv06ze9VqeVU5
	4tp41GyedSm/kxz7BMacBsvDzxmZn7jY8WbZNhiBPKkIclctUstoyKKbZknMW6Zef0QfDi
	45VB7bWyI/jggcmWUBpiMZBnW7RoaV0=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-463-1Gz9GptUNoSekdhuysN2cA-1; Sun, 15 May 2022 06:42:44 -0400
X-MC-Unique: 1Gz9GptUNoSekdhuysN2cA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6EF521C05AF8;
	Sun, 15 May 2022 10:42:43 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id D10E62166B41;
	Sun, 15 May 2022 10:42:28 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 022511932238;
	Sun, 15 May 2022 10:42:28 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: blinux-list@redhat.com
Subject: script for easier transmission list output
Date: Sun, 15 May 2022 05:43:51 -0500
MIME-Version: 1.0
User-Agent: POP Peeper Pro (5.2.2.0)
X-Spam-Flag: NO
Message-ID: <mailman.15256.1652611347.111210.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I have a little script here that prints out the results of
transmission-remote -l
in a slightly easier format to read. The script looks like this:
transmission-remote localhost:9091 -l | awk -F ' +' 'NR>1 && $1 != "Sum:"{name="";for (i=11; i<NF; i++) { name = name $i " "}; printf "%d: %s - %s - %s - %s\n", $2, name, $4, $3, $9}'
The problem is that depending on spacing some of the names don't print or are truncated. I don't know enough about awk and its friends to reliably fix it. Can any of you help?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

