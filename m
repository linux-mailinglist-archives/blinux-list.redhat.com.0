Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E6274EE76A
	for <lists+blinux-list@lfdr.de>; Fri,  1 Apr 2022 06:43:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1648788184;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=r4pFLzYoWL3LKhgwXK9F+6i9V8jsHs2K9J+BTPvcGo8=;
	b=FvO9sRee5MBE2VrF8t3RFerrHrpl0G/au/wmKjxomzVpBnigcEhtYYjjJlM6FVdvKBJHl7
	3DLc4BLFMpwyXt7lgry3ELIeYCg7IhfnR6BF5J97xTtMwHBvCdkvIvGuHL5HhR7a+Efrnm
	XSxCsrRPrM7AGiJ1f3tYesZ0CnFmhEE=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-477-QBdZ_SkcNIm02jOMLokJOw-1; Fri, 01 Apr 2022 00:43:01 -0400
X-MC-Unique: QBdZ_SkcNIm02jOMLokJOw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DAFC81C05EA4;
	Fri,  1 Apr 2022 04:42:59 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 4E417407EE60;
	Fri,  1 Apr 2022 04:42:59 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id D0EA41940340;
	Fri,  1 Apr 2022 04:42:58 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 1 Apr 2022 00:42:55 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Non-visual mind mapping alternatives
In-Reply-To: <mailman.5879.1648787784.111202.blinux-list@redhat.com>
References: <mailman.5721.1648781651.111205.blinux-list@redhat.com>
 <mailman.5911.1648787363.111206.blinux-list@redhat.com>
 <mailman.5879.1648787784.111202.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.5777.1648788178.111208.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

You could start with a table format and put links in cells of that table
that take you to other content too.
Row and column headings on such a table would be informative if you chose
to go that route.  In any case, searches for orgmode and mind map on
google and youtube may show you how others did their mind maps.


On Fri, 1 Apr 2022, Linux for blind general discussion wrote:

> Oh yeah thinking about this more, it seems that an outline format may be
> helpful. If I'm interpreting this right, the diagram just visualizes an
> outline anyway, so this does look like what I will need. I can probably do
> that in simple Markdown without having to learn EMACS or anything more
> complex. Definitely keep the tips coming. Thanks.
>
> ~Kyle
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

