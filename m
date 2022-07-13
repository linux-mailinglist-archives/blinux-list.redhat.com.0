Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DF54573B27
	for <lists+blinux-list@lfdr.de>; Wed, 13 Jul 2022 18:25:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1657729558;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=0Q9q2e/CksSGBrytCYIf+I73GKp/GNuPnqhrVTnq190=;
	b=CkQXlU10d8b6XvfNTe1otQRwJhMqGMGrdD2wfoKQRE+XIvn+OGU4KHrQWGmW7otzQvN3yZ
	hEKUMrx2ZDe2EmrrWGFjtufxX4i+5z0Y0UjtsAkZz5NJmndMs827mFD7cAIEXY+BLvaOp+
	A5BPm1qdIMS/x954RRgtWS1/DJdQHCk=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-412-Am9Xd4VGPzGPYc7yP5xSGw-1; Wed, 13 Jul 2022 12:25:57 -0400
X-MC-Unique: Am9Xd4VGPzGPYc7yP5xSGw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EA0863C10150;
	Wed, 13 Jul 2022 16:25:55 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id C418B2166B2A;
	Wed, 13 Jul 2022 16:25:55 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 22C8C194707F;
	Wed, 13 Jul 2022 16:25:55 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Feedback-ID: ia9b947fb:Fastmail
Date: Wed, 13 Jul 2022 09:16:43 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: wich is better mailing list or usenet newsgroup
In-Reply-To: <mailman.33408.1657728131.111204.blinux-list@redhat.com>
References: <mailman.33231.1657706289.111209.blinux-list@redhat.com>
 <mailman.33408.1657728131.111204.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.33376.1657729554.111203.blinux-list@redhat.com>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Well, Kyle-and-All, I think both avenues have their purposes. Usenet goes over 
nntp instead of smtp for mail. If you have a good usenet provider, you can 
examin text discussions back in 2003. This is great if you know a subject of 
interest. In a case of a mailing list, I suppose your search would need to be 
much more specific-and-it would be helpful to know a list you want to look at 
or join. Typing a search in a usenet news-reader is quite good. I still use trn 
for reading-and-saving  binaries, but Alpine for posting.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

