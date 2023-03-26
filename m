Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BAA0C6C960E
	for <lists+blinux-list@lfdr.de>; Sun, 26 Mar 2023 17:14:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1679843656;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=EZ53AsStOhcEyxBpM8TYXcQu4x7yEQmgTC4sj7qAY9k=;
	b=Sa4IB3ThrBV1K7EZeqatOS/lVyoxyKlHGzSNACvAgTkKHx9Je6nrOmUOdGEk9DjCIg6bMm
	v9Z5bpHKRn/Rg4jlTS14ZcrgaDbTfKKVk6JMDK4cHHfzys4XN4admrP1isr5XIAazSg3LM
	TPF0MZUveGXARs+Sp/4JozxoAcu4RIk=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-672-QEwF8yrIOrGP3gBC8YskKg-1; Sun, 26 Mar 2023 11:14:12 -0400
X-MC-Unique: QEwF8yrIOrGP3gBC8YskKg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 120F738123A3;
	Sun, 26 Mar 2023 15:14:11 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 3F0E343FBD;
	Sun, 26 Mar 2023 15:14:04 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 9629919465B1;
	Sun, 26 Mar 2023 15:14:03 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Feedback-ID: ia9b947fb:Fastmail
Date: Sun, 26 Mar 2023 08:13:55 -0700 (PDT)
To: Blinux Discussion List <blinux-list@redhat.com>
Subject: Looking for a Good Way of Dealing with Accidently Deleted Files?
MIME-Version: 1.0
Message-ID: <mailman.208.1679843643.2676487.blinux-list@redhat.com>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi All: After many years of impulsive mistakes on my part, as well as other 
insodents, I would like to have a better way of recovering from these. As an 
ideal solution, I would like to alias a "del" command so files are moved to a 
scratch location for 6 hours, which would be more than enough time for me to 
realize I was impulsive about wild-cards. I am in TCSH Debian SID. At least 
years ago in DOS I could run an undelete command, it would ask  for a first 
letter to fillin. Also, years ago when I was on PrimeNet, we could cd in to a 
"snapshot" directory where everything would still be around. My Linux expert 
says at 1 point we tried a similar solution of butter fs but he says I didn't 
like it as it was filling up my hard-drive. Seemingly just keeping deleted 
files around for 6 hours would be a perfect solution. We are also planning on 
upgrading hard-drives on a local backup server. Thanks so much in advance for 
suggestions.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

