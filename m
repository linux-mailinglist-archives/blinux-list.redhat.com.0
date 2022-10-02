Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 168F55F255C
	for <lists+blinux-list@lfdr.de>; Sun,  2 Oct 2022 22:58:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1664744310;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9Jyc6jtrYP2LIcvqxZBVyuBLP0WYG4vUfouE/3yq5yk=;
	b=SW+5b9o22dJ/dugdajFpVYId6bH9adLAEBIR1ooxYvqyyFVHSn4QrBfzFtjD3tjOYhWQkI
	dg0t6coJmUhT72/cPnzq0sZKNW6vYoBZCKuhEdc4nGaLoudy+HVQDRlXNEZ4NdRZLTfUGW
	pGKbflWd7KX7vHQT+4SNkT4l28XiTPc=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-623-N57yk08qOC2XplkuHy-ZUQ-1; Sun, 02 Oct 2022 16:58:27 -0400
X-MC-Unique: N57yk08qOC2XplkuHy-ZUQ-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 63F4C85A583;
	Sun,  2 Oct 2022 20:58:25 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 353954A9254;
	Sun,  2 Oct 2022 20:58:24 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id B3A471946594;
	Sun,  2 Oct 2022 20:58:22 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 2 Oct 2022 20:58:17 +0000
To: blinux-list@redhat.com
Subject: Re: screen in Ubintu shell question?
References: <mailman.4818.1664738971.6081.blinux-list@redhat.com>
 <mailman.4806.1664742047.6077.blinux-list@redhat.com>
 <mailman.4356.1664742791.6074.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.4356.1664742791.6074.blinux-list@redhat.com>
Message-ID: <mailman.4860.1664744302.6080.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 2022-10-02 16:33, Linux for blind general discussion wrote:
> There is a reason why I want to use links the chain here, documenting a
> dreamhost issue for dreamhost instead of shellworld.
> Still your wisdom is sound.
> now, if I can just get the hardcopy creation process to work.

It should work with any interactive program that waits for
user-interaction.  While it's waiting, you hit GNU-screen's prefix
key (control+a) and then the letter "h" to indicate you want a
hardcopy of the screen.  It should save that to a file in the current
directory called "hardcopy.0" (I think if you do more than one of
them, it numbers them sequentially).  You can continue to use the
program as normal (possibly taking multiple screen-captures as you
perform various actions) and then when you quit, GNU screen quits
too.

Alternatively, you can launch GNU screen, which puts you in a
sub-shell inside screen.  You can then launch multiple programs
(either each in their own screen window, or serially) just as you
normally would, using the <prefix>h to capture a hardcopy of the
screen to a file.

-Tim





_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

