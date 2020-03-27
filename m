Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com [63.128.21.74])
	by mail.lfdr.de (Postfix) with ESMTP id 8FA731959ED
	for <lists+blinux-list@lfdr.de>; Fri, 27 Mar 2020 16:30:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585323058;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=sRPgrN7wDvaUAkv89g1kUy9aqqLlUYcK3T+OQON1DZQ=;
	b=H5+oaCIqsb9wKnCPBzE8vRubc7iZShM62VPXPgKKiMBVQLHZjVb87vCbZ9/WVI+qHOIdzC
	lV7bZ6KOldDEPTXlaDdlAX62I4iGLPsijz+dp1EK0OnnqYl+fAbpDOXQElGFNUShdwMQAY
	lyHUlhD4z2UN2VU4TrkXliMwSCSa7FE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-246-IEd27ESfMDqBE2IJGwIr8Q-1; Fri, 27 Mar 2020 11:30:55 -0400
X-MC-Unique: IEd27ESfMDqBE2IJGwIr8Q-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E4A921005512;
	Fri, 27 Mar 2020 15:30:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0684A5C1C3;
	Fri, 27 Mar 2020 15:30:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 64CFB8A05A;
	Fri, 27 Mar 2020 15:30:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02RFUajr010380 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 27 Mar 2020 11:30:36 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id EDC6F1049473; Fri, 27 Mar 2020 15:30:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E9E8D104946C
	for <blinux-list@redhat.com>; Fri, 27 Mar 2020 15:30:34 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 05A128001E4
	for <blinux-list@redhat.com>; Fri, 27 Mar 2020 15:30:34 +0000 (UTC)
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com
	[209.85.210.41]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-260-xXTXB_pjOteDsiaDyuBbKg-1; Fri, 27 Mar 2020 11:30:31 -0400
X-MC-Unique: xXTXB_pjOteDsiaDyuBbKg-1
Received: by mail-ot1-f41.google.com with SMTP id c9so10069180otl.12
	for <blinux-list@redhat.com>; Fri, 27 Mar 2020 08:30:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=p2UgUZxEe/+2ygm8JXIfKYHBzVWIz2GoDg+RT/svhtI=;
	b=DxT8ZN/DeIZeo8vMt2Bgku8dtjk0aC0b3vtq64jkS1YVbtzYVOVgMAJuzoKUqZrGFR
	/ZHy7x86Wgy2A2rRyZbb3zocOlw5xJUj3RjnEd9pjjqZkRM4Q3UaBMApIZaJy13nk8Zp
	8ccF+qI+i5K+5JZMCFM+G+P0f7Bbng7nBhsC27GKGsC7d57r//9kbketr++dqgqUaAfQ
	hw6E9/BMmkLyXTD9vI6WCetdbfT2P+jSRFqoyDlrc1AQuvdcVIU4b2Z1a4Qq0WoDHwc2
	sBmem+zVc6/2rlsf739TZnYh75t2HL9rtsKSFICsutx/CrCp4gsa1jk2azroYRz2smkV
	QZqg==
X-Gm-Message-State: ANhLgQ0q1H+8eMiZnZVllaSElFeImYB+EjtLfXkwQ9AIOi+h1cFKBv7d
	lX9bOquYIAulkR9o5rBjwqUtGqU9eKObIbiChQbZpQ==
X-Google-Smtp-Source: ADFU+vv+wDSvNNjprvdlqExN4oZNVvpJLZjBjXacdyCsciwh65eoaWLfhQjw59NYvYUgVeximnIqXADpZp/+nnsPfrg=
X-Received: by 2002:a4a:95a8:: with SMTP id o37mr9280159ooi.40.1585323030167; 
	Fri, 27 Mar 2020 08:30:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6830:1295:0:0:0:0 with HTTP; Fri, 27 Mar 2020 08:30:29
	-0700 (PDT)
Date: Fri, 27 Mar 2020 15:30:29 +0000
Message-ID: <CAO2sX317wcDpD8e3OWg7_5UvxMWND7urVtyok-9i9Q=PBBZCFg@mail.gmail.com>
Subject: Convert unwrapped paragraphs to hard wrapped paragraphs when there's
	no blank lines.
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 02RFUajr010380
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Okay, this isn't strictly an accessibility question, but I can't think
of any better place to ask and Google didn't help much.

I occasionally purchase eBooks from Smash Words as they're the only
eBook Store I know of that offers plain text along side the far too
prevalent for my liking PDF, ePub, and Kindle formats.

Problem is, their plain text eBooks are typically long enough Firefox
and Orca simply choke on them and they have paragraphs that are
unwrapped, which makes reading them with nano and SBL cumbersome.
Normally, I'd just use nano's justify command to hard wrap thewhole
file, but they lack blank lines between paragraphs, so Nano would
think the whole book a single paragraph.

So, does anyone know a way to automate inserting blank lines before
and after each line in a file that's too long to fit on the screen all
at once and then hard wrap those long lines?


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

