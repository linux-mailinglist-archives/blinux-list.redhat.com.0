Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 475DD5B7B87
	for <lists+blinux-list@lfdr.de>; Tue, 13 Sep 2022 21:42:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1663098149;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=xwMejCmIywwgaHvCGzSrgzXQTn6o9CY0hZNThvMxklI=;
	b=U0wJIxSF19xXdWiSS2eXtbMpw1QZC3eN9rPXnHN+8ZENXXS8X6W5W55mIzOfoHMFyWqHg4
	7cC+LR3jvDhF7ibADIFWp/074QHT/1GvzbiVEDuGk+QxW0PsaBG2IVa9ZGsHmQ9sfRLuWW
	ThIwtpyY44mzJEgU4JFXHnjsodufCbM=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-49-TFjXInUhMHizSxWk6KZcPg-1; Tue, 13 Sep 2022 15:42:27 -0400
X-MC-Unique: TFjXInUhMHizSxWk6KZcPg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 43CF5380390C;
	Tue, 13 Sep 2022 19:42:25 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 026F440C83DF;
	Tue, 13 Sep 2022 19:42:25 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 94D8F1946A51;
	Tue, 13 Sep 2022 19:42:24 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 13 Sep 2022 21:36:08 +0200
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Daisy-player
Mail-Followup-To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.8282.1662926405.10503.blinux-list@redhat.com>
 <mailman.7882.1662933308.10505.blinux-list@redhat.com>
 <mailman.8693.1663096733.10503.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.8693.1663096733.10503.blinux-list@redhat.com>
User-Agent: NeoMutt/20170609 (1.8.3)
Message-ID: <mailman.8220.1663098144.10507.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Linux for blind general discussion, le mar. 13 sept. 2022 21:08:46 +0200, a ecrit:
> On Sun, Sep 11, 2022 at 11:54:29PM +0000, Linux for blind general discussion wrote:
> > No clue, sorry, but for your information the new repository is:
> > https://github.com/book-readers/daisy-player
> > 
> > Didier Spaier
> 
> Thank you.
> 
> After doing ./configure; make, I get another problem:

It looks there were bugs in the repository indeed. I have pushed fixes.

Thanks for the report,
Samuel

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

