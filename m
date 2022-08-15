Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 997405942D1
	for <lists+blinux-list@lfdr.de>; Tue, 16 Aug 2022 00:39:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1660603190;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=BCTHelM69UnMMxsJUUSJlgZnWnIiZoYnZl2rJj1T7FU=;
	b=KHjQPtSVaqK0nGkNGGaMS6PDTDYs4VJ2FeFplPSj0g2OCWjiNw/s/+1pQE7tdpbdQHyxAr
	fpxiL4ts7yI9ajQi6z6N9/WjkexZObBTS4AQQbNmv5Ts6yZVjPq4qXrsBSZyP2uqhcKgsx
	hz1vM/d+4QiB19N042reHWRAHHssMrw=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-74-fKXkOxTCOgiO4lku28s0nw-1; Mon, 15 Aug 2022 18:39:45 -0400
X-MC-Unique: fKXkOxTCOgiO4lku28s0nw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AC775101A586;
	Mon, 15 Aug 2022 22:39:43 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id F3EF814152E0;
	Mon, 15 Aug 2022 22:39:42 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 2933A1940353;
	Mon, 15 Aug 2022 22:39:42 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 15 Aug 2022 12:35:11 -1000
To: blinux-list@redhat.com
Subject: Re: Impossible to know sender info
References: <mailman.708.1660592109.10505.blinux-list@redhat.com>
 <mailman.703.1660592414.10507.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.703.1660592414.10507.blinux-list@redhat.com>
Message-ID: <mailman.770.1660603181.10501.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Samuel wrote:
> John wrote:
> > I would like to see if there is not an alternative/possibility
> > to bring back name and e-mail from senders while maintaining the
> > viability of this list?
> 
> Not getting the e-mail would be not too much a problem, but not having
> the name is really problematic for following discussions, indeed.
 
I agree. If we're already hacking the From: field, how about
including the original name e.g
JustSomeGuy via Blinux <blinux-list@redhat.com> ?

If the MTA is postfix, it could be just the matter
of writing a regex to do this. (Raises hand to volunteer)

Joel

-- 
Joel Roth

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

