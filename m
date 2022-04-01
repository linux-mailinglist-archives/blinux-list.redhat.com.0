Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C004EFBCA
	for <lists+blinux-list@lfdr.de>; Fri,  1 Apr 2022 22:47:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1648846064;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5kiaLNX1IIGylfoNeTWphebvogSG/9Dz+ITrIJWDgVk=;
	b=dYKpOhbIw7HSxv8IgwZZyfi0UMGxwnrRdC0OXfMK6kKIdRpSHlxp1tOWk2FQY5WUN/HNJi
	yWvs7gNfkDp6egeP7rEQxiZHbc0oRWSZV2VIecEFNoMeffn1jdkaKZ5vvBlFpiPnYH0XKS
	XLl/U8Yqfu8iVKl1FoO6t8U3JdpDTRY=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-537-4cvsV4GWO6qjocwyFXfT0g-1; Fri, 01 Apr 2022 16:47:41 -0400
X-MC-Unique: 4cvsV4GWO6qjocwyFXfT0g-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 65C9D3822215;
	Fri,  1 Apr 2022 20:47:39 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 52259417E35;
	Fri,  1 Apr 2022 20:47:27 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id F3D421940345;
	Fri,  1 Apr 2022 20:47:18 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 1 Apr 2022 14:57:28 -0500
To: blinux-list@redhat.com
Subject: Re: Non-visual mind mapping alternatives
In-Reply-To: <mailman.5879.1648787784.111202.blinux-list@redhat.com>
References: <mailman.5721.1648781651.111205.blinux-list@redhat.com>
 <mailman.5911.1648787363.111206.blinux-list@redhat.com>
 <mailman.5879.1648787784.111202.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.5977.1648846038.111204.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here.  If you already use emacs, orgmode really is a great fit.
One of the other aspects of mind-maps involves the ability to create
links between arbitrary between nodes on the map (branches of the
tree).  I *think* that orgmode supports this, but you'd have to
research doing it.

As a second possibility, I (a vi/vim/ed user, and not steeped in the
ways of emacs/orgmode) tend to use graphviz.  It's a particular format
of plain-text/mark-up file processed by a suite of tools (I most
frequently use "dot") that convert the graph-description into any
number of output image-formats.

Both are plain-text and can be transformed into other formats, stored
edited in your favorite text-editor, in your favorite version-control,
and synched around as you see fit.

Hope this gives you some other ideas,

-Tim



On April  1, 2022, Linux for blind general discussion wrote:
> Oh yeah thinking about this more, it seems that an outline format
> may be helpful. If I'm interpreting this right, the diagram just
> visualizes an outline anyway, so this does look like what I will
> need. I can probably do that in simple Markdown without having to
> learn EMACS or anything more complex. Definitely keep the tips
> coming. Thanks.
> 
> ~Kyle
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

