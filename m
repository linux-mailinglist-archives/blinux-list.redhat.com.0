Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 27544793DEE
	for <lists+blinux-list@lfdr.de>; Wed,  6 Sep 2023 15:44:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1694007860;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=C0YL1h6T5bfNtjlaFUjKzI/QEDvhsct93bchFiFB3Vg=;
	b=ThMzYh0E2F0pd7n+h5M61dfrDjGGPCjN5I9vbJj62g11fyTImQoAC+2QJH1fCcBEYna1tJ
	GeGoh8kganVRr5MhU+ok8n1sYZ5mtFqvfuhrbkCAlY8AzznX3LhZg0SZQ6YC54LZkEpfFk
	+Kc3v8MQmsX0Kw4TQdfVddxA9Lbe1iY=
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-481-X0O1P5ddNbSzoPXKilBqug-1; Wed, 06 Sep 2023 09:44:16 -0400
X-MC-Unique: X0O1P5ddNbSzoPXKilBqug-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7773F1C05138;
	Wed,  6 Sep 2023 13:44:13 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 4AE5C140E963;
	Wed,  6 Sep 2023 13:44:08 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 528AF19465A2;
	Wed,  6 Sep 2023 13:44:06 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 06 Sep 2023 13:43:52 +0000
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: User/Developer feedback wanted: How do you write about your software
 on your website?
Feedback-ID: 26663242:user:proton
MIME-Version: 1.0
Message-ID: <mailman.852.1694007846.353785.blinux-list@redhat.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello everyone,
I'm in the process of writing my personal website (yes, thatone supposed 
to be finished 7 months ago, whatever). It should handle anything I find 
interesting to write about, i.e. tech news, my production, non-tech 
interests, reviews, tutorials etc.

I would like my website to conveniently present my software work. I.E. 
The reader clicks on software, where they can see all my applications, 
filter them by platform and so on. However, I can't decide how to 
present the individual programs.

One approach is to simply use the readmes from GitHub. I'm usually 
pretty consistent when writing these, each important readme has to 
contain an introduction (what's the program about), build instructions, 
usage instructions, additional documentation (if necessary), 
acknowledgements and license information.

I guess that quite works for a website in terms of size, it also doesn't 
introduce any burden on writing and maintaining. However, when thinking 
about this solution, I can't get rid of feeling it's sort of cheap. Like 
yes, the user gets thorough information, but when they click the Github 
link, they will see exactly the same text and the first idea will be 
"Hey, this person didn't really put a lot of effort into the site". 
Plus, the usual scheme of readmes is something so much associated with 
GitHub I'm afraid it would be sort of weird to see it as a webpage.

Another approach is to simply write a new page for each program. This 
quite works for bigger things, where you need to explain the concepts, 
reasoning behind them, you may want to link other resources etc. But, 
what about the smaller-ones, like:
https://github.com/RastislavKish/mtg

As helpful as this little cute utility is, it takes like three sentences 
to describe, and what then? You end up with a blank page with one or two 
lines of text on the top. That doesn't sound particularly convincing, 
either.

as a user, how would you expect a website to present you a software 
collection? Or as a developer, if you have multiple bigger / smaller 
projects going on, how do you write about them under one roof?


Best regards


Rastislav



_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

