Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 89ECF78F76E
	for <lists+blinux-list@lfdr.de>; Fri,  1 Sep 2023 05:21:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1693538461;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=KiEMoS1Jghuqn9/XuXrloTE4j9clsKQ6xpJomercedw=;
	b=XLex3KO8FOTDWsfyPno2UNDn8OsZouGoKwgDYBgB5LVkAi9h2Bw27XN6PqJjd5IovzC+Yl
	QwikHGl0oKHZdBJ448sCrXubFbTwMGYDJqCW71kNGjW6ophUYWMflbXNx3RxFHkjOBGjFI
	KjKi+PeGolRH0JeNWgM0GDCkeRra2RQ=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-50-RgIkFdhoOj2G_z--K8UqwA-1; Thu, 31 Aug 2023 23:20:57 -0400
X-MC-Unique: RgIkFdhoOj2G_z--K8UqwA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5F353185A78B;
	Fri,  1 Sep 2023 03:20:55 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 392402166B25;
	Fri,  1 Sep 2023 03:20:48 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 71EB219465B6;
	Fri,  1 Sep 2023 03:20:47 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 01 Sep 2023 03:20:30 +0000
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Turning math_scanner into a text layout checker
Feedback-ID: 26663242:user:proton
MIME-Version: 1.0
Message-ID: <mailman.1437.1693538447.1829981.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello everyone,
so, I've been working on a document where typesetting was quite 
important. I've had a special layout in mind I wanted to achieve 
including spatial text blocks, special alignments, images, etc.
Typst makes it very easy to design all sorts of imaginable things, but 
even if the syntax is as great as it is, making a mistake, 
misunderstanding something or simply not being sure how well will given 
content arrange, I was in a need to check out how did my idea turn out.

So, I implemented few useful layout checking functions into 
math_scanner, since it has already showed interesting results when it 
comes to working with documents' graphics.

So, right now, after Tesseract processes the input image, you can:

* for any character, check the percentual distance to the left, right, 
top and bottom edge of the image
* If you border a region of the image, you can check its percentual size 
relative to the page (or column if you've made use of the program's 
columnns splitting functionality)
* Check the size of any focused character in pixels. Note this may not 
be always accurate, since the size is calculated from the bounding boxes 
determined dby Tesseract.

Making use of these functions, you can easily check say whether a 
heading is centered, how much vertical space is left in column while 
writing the text, whether and how paragraphs are aligned, how big are 
individual text blocks on the paper, or whether your figures were 
aligned correctly as far as there is text around them you could use to 
mark a region (note just horizontal / vertical borders are necessary for 
determining the height / width, respectively).

math_scanner can split the input image into columns, which are 
afterwards treated like standalone images (including rerecognition by 
Tesseract, this can clear out a lot of clutter).

The new layout checking functions respect this mechanism too, so if you 
have a multi-column document, you can review the layout in each of them 
separately.

Indeed, it's still a good idea to have your work checked dby a sighted 
reviewer, but it's still a difference to call someone for a check 5 
times and 50 times, because you don't expect something, then change your 
mind, rework, etc.

This particular implementation also has its limitations, namely the fact 
it's run by OCR has few advantages, but also some significant downsides, 
like recognition errors and the general unavareness of the program about 
things like figures in the document.
It would be very interesting to implement something similar working 
directly with information from PDF, since tools like Typst or LaTeX tend 
to include them in somewhat semantic form, so it may be possible to get 
very interesting results.

Right now however I don't think I quite have the time to study the 
structure of PDF documents nor build a layout explorer from scratch, so 
since math_scanner already had most of the prerequisites which were good 
enough for my use-case, this is the optimal route for me at the time being.

I'm just letting people know in case someone was interested in my little 
experiment.

You can find the new commits in the development branch of math_scanner:
https://github.com/RastislavKish/math_scanner

Still Linux only, the Windows branch is actually complete and 
functional, but it yet has to be merged, since I didn't find anybody on 
Windows willing/able to install Python and the necessary dependencies 
for my little program. :)
Perhaps I should merge it though, the changes are subtle really, there 
is very little to go wrong and even if it does, it can be solved when 
someone notices.
I will take a look into it at some point.

Have fun

Best regards

Rastislav


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

