Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 341676CA400
	for <lists+blinux-list@lfdr.de>; Mon, 27 Mar 2023 14:25:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1679919907;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=dwDXHkeq5caoSrlU0Z5T2TVn5WZ+B4+1v7dYxW9icjQ=;
	b=TfuHtfbrJukVwBQYZOmUPjjp0vbS4JvKzTc6ubhFxt1pD3Q7EG3FcYkAo1Xq4f/ThBss3o
	LvLhoXmPbU7KRH7hP9Gx1dO0c/bK0Vz3vttHzVFAf7sjqaYkz8sxytAxQFSRm/+af3x3Dh
	Je2l7+7taDna7saC2C0zWqGb8jYzAVE=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-468-iTkYOyH2O7W4Vwbhf5w_eQ-1; Mon, 27 Mar 2023 08:25:03 -0400
X-MC-Unique: iTkYOyH2O7W4Vwbhf5w_eQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B2CA3855314;
	Mon, 27 Mar 2023 12:25:01 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 3ACED202701E;
	Mon, 27 Mar 2023 12:25:01 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 6086E19465B3;
	Mon, 27 Mar 2023 12:25:00 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Feedback-ID: ia9b947fb:Fastmail
Date: Mon, 27 Mar 2023 05:24:51 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Looking for a Good Way of Dealing with Accidently Deleted Files?
In-Reply-To: <mailman.420.1679919340.2676483.blinux-list@redhat.com>
References: <mailman.208.1679843643.2676487.blinux-list@redhat.com>
 <mailman.420.1679919340.2676483.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.437.1679919900.2676485.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Thank you: Actually what happened, I rip alot of news-programming from streams. 
I was in the process of converting from dot aac to .m4a. I thought they were 
all done, so I used a wild-card to nuke these files which I thought were 
already converted. So, based on what I wanted to do, even if I had an 
interactive prompt, I still may have gone ahead. Later I will send a separate 
thank you note for the solutions of Jude-and-Tim.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

