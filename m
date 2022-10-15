Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B21045FFC7E
	for <lists+blinux-list@lfdr.de>; Sun, 16 Oct 2022 00:14:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1665872067;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=rBQScGTdJULCr42EKTTgXcptqpRCIjKHdcngiWS8ZBU=;
	b=NZ6uiDS4ljklPovfeCYY475oaAL9cHDtXp+UfS+GA/CjXQoqEQgE57pjEnFPxn/jADh7LU
	dZv5fR00yy7C4XjipR6Bkpzg7wc5RVLsouoVdw0ll+tVOKOaMQyJ1NeDIFvTnjuXODG9mj
	Iu0cc7bavAVZUD48R8OZgMML5tEeebE=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-427-kH2jMbhHMK2DBonK8RPAtw-1; Sat, 15 Oct 2022 18:14:23 -0400
X-MC-Unique: kH2jMbhHMK2DBonK8RPAtw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AE55729AB40A;
	Sat, 15 Oct 2022 22:14:21 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 61F58145F94F;
	Sat, 15 Oct 2022 22:14:11 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 6B548194658F;
	Sat, 15 Oct 2022 22:14:10 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 16 Oct 2022 00:12:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Taking the LPI Certification with Pearson Vue
To: Linux for blind general discussion <blinux-list@redhat.com>
Message-ID: <mailman.520.1665872049.3009.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi Listers,


I am planning to take the Linux Professional Institute Certificate 
(LPIC-1) exam in January 2023. However, I am not sure about the 
accessibility of the Pearson Vue exam program. My question is, Is there 
anyone who ever took a certification exam with Pearson? How accessible 
is their program with screen-readers whether on Windows or Linux? I am 
comfortable working on either platform. I am only hesitant to regret the 
experience. So what should I know as a totally blind user.



In preparation, I am using Debian 11 and Fedora 36.



TIA,


Euclid

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

