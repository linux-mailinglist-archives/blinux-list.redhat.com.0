Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DCD4F7AC615
	for <lists+blinux-list@lfdr.de>; Sun, 24 Sep 2023 03:19:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1695518364;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=s4Zckzb1Jf+SFp+B12/UgPTmiEnWHbcyaKyLdI5cHPA=;
	b=auJEXE/x10fz//NonIM7CKHHCmK0UmU+oY7B74XKLC8Y6z4G1ja1m4eDGWYTjqibpsqqkY
	c5TxIUxVJR+gQEEXVd7vvMOqFeqab31zSOS2QsjeVjvMrCXEuGSheiSemqVZquJr8XNGVN
	7e3RXPJbqVru978aSYZCRuqnQn06yJs=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-248-nkNhIR6lPnyCyN1PB8YEtQ-1; Sat, 23 Sep 2023 21:19:19 -0400
X-MC-Unique: nkNhIR6lPnyCyN1PB8YEtQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 64CFA802D35;
	Sun, 24 Sep 2023 01:19:16 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 50AF5C15BB8;
	Sun, 24 Sep 2023 01:19:16 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id B0E1219465BD;
	Sun, 24 Sep 2023 01:19:15 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 23 Sep 2023 21:10:46 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Can I Translate Audio Among Languages?
In-Reply-To: <mailman.46.1695515721.4021071.blinux-list@redhat.com>
References: <mailman.54.1695511852.4021078.blinux-list@redhat.com>
 <mailman.39.1695513933.4021070.blinux-list@redhat.com>
 <mailman.46.1695515721.4021071.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.68.1695518354.4021070.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi Chime,
Your answer here has me a touch confused.
If I follow, you want to say take an audio file of a newscast, feed it 
through this program, and have it produce English audio..using what voice 
source?
Kare



On Sat, 23 Sep 2023, Linux for blind general discussion wrote:

> Thank you, I had to install python3-whisper. Will examine it. I would prefer 
> if the translation would also come back as audio. Thanks again.
> Chime
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

