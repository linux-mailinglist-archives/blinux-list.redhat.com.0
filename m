Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DF256A0122
	for <lists+blinux-list@lfdr.de>; Thu, 23 Feb 2023 03:21:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1677118873;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ruagqmYsA6iXmzmjoowlqwVfOv2XNAs5+AOIyIQ6p3o=;
	b=YhDYqwQnfu7x/aEiS/CLtBnh2i/Z7KkxfHnQLJNqYuDWTe1Ui0l9PFtdypHA6PbZ6zuEVN
	lYUDCUIjdsD19dG7dF4ZpYLKrCaJHNy5Eehhb9daW2Bp//61/5L+bjF6ytM4jPSD1kG366
	RBVad1AtEx0F/HsjrbyVzskkSk1vj4Q=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-261-qlUK_b8vN_uJSLj4mTFtzg-1; Wed, 22 Feb 2023 21:21:09 -0500
X-MC-Unique: qlUK_b8vN_uJSLj4mTFtzg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C3CA21869B70;
	Thu, 23 Feb 2023 02:21:07 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 68CBE2026D4B;
	Thu, 23 Feb 2023 02:21:07 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 09D5319465B9;
	Thu, 23 Feb 2023 02:21:07 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 22 Feb 2023 21:20:55 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: What a find! DECTalk!
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.886.1677038394.686542.blinux-list@redhat.com>
 <mailman.1848.1677098798.686540.blinux-list@redhat.com>
 <mailman.1792.1677111557.686539.blinux-list@redhat.com>
 <mailman.1914.1677118576.686544.blinux-list@redhat.com>
In-Reply-To: <mailman.1914.1677118576.686544.blinux-list@redhat.com>
Message-ID: <mailman.1921.1677118866.686542.blinux-list@redhat.com>
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

apt-get install build-essential libasound2-dev libpulse-dev 
libgtk2.0-dev unzip git


OK this just gets you the tools you need to compile the source code. Now 
you need to run

git clone https://github.com/dectalk/dectalk.git

cd dectalk/src

and then you can run the rest of the commands you could see on the 
Github page and follow those up with

sudo make install

to actually get the software to be recognized by speech-dispatcher. Hope 
this helps.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

