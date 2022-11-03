Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DFF50617C0C
	for <lists+blinux-list@lfdr.de>; Thu,  3 Nov 2022 12:58:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1667476713;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=09OSwHw4Ul2N1lcYll5u/gL0ux/xokB6GIkA60U8LRg=;
	b=T97ANE02xX1G2LOZJhtJECYg1uakVHAi57fSUsfqAVaFBA6cLqhJXkPYaWWegP77H4JemN
	PnIPXAmDntROHCdw0C7lhDXr7o+TFWafeuegAH8PgL8rm4qlZ8zGb7YEkKfVfz29RttUbd
	5pFTJrW1kTK4EY8KNGa2A/dU1Ot1KTc=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-523-mkLkM_-cOSuqkkQjEL00-g-1; Thu, 03 Nov 2022 07:58:32 -0400
X-MC-Unique: mkLkM_-cOSuqkkQjEL00-g-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E0A33101E157;
	Thu,  3 Nov 2022 11:58:29 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 4C689C15BA5;
	Thu,  3 Nov 2022 11:58:03 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id B77381946A66;
	Thu,  3 Nov 2022 11:57:58 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 3 Nov 2022 07:57:54 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Javascript for text mode (fwd)
In-Reply-To: <mailman.4503.1667475991.3004.blinux-list@redhat.com>
References: <mailman.4326.1667439822.3008.blinux-list@redhat.com>
 <mailman.4292.1667467115.3005.blinux-list@redhat.com>
 <mailman.4321.1667468317.3007.blinux-list@redhat.com>
 <mailman.4503.1667475991.3004.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.4391.1667476678.3008.blinux-list@redhat.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The only browser that ever did that was edbrowse and it implemented a
subset of javascript since much of javascript has no possible application
to text environments.  The disadvantage of edbrowse is that it's a
combination of an editor and a browser and it is necessary to keep things
straight in the mind when using edbrowse to know if you're editing or
browsing.  The program loads a web page and places the user at the web
page end when an url is opened and shows none of the url's text until the
user keys in commands.
So yes, it's possible but you won't like it.  There's another project
called browssh with no interest in accessibility and is actually worse
than edbrowse.  The elinks browser if compiled with javascript can do some
things how useful those will be for screen reader users is another matter.



Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

On Thu, 3 Nov 2022, Linux for blind general discussion wrote:

> Do you thing that it should be possible? I think it is but they don't do it.
>
> Artur
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

