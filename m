Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 915094FE40C
	for <lists+blinux-list@lfdr.de>; Tue, 12 Apr 2022 16:43:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649774630;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=mWbVFX4kZOEaRkuc7fVe9WfK/bWSn2GfnrinI8ADboI=;
	b=QVj7eAjZLUW+mB1IhxQixBZp/CgDTRQ3a9oOTYE60tCJi89Y+8qBEuqoLJsbSDHnKZTuBv
	LYK8IJVXccyviv9Z7R+zTDb8MoTPaoWqKDQvvB8fYcQONjnSrY6uYASF3TatnBK7CmOn8i
	vzU/YduTioTewlZWHpkHWRRuSnOcGm8=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-320-YdSGf09iPeyYVCxohUnGUw-1; Tue, 12 Apr 2022 10:43:49 -0400
X-MC-Unique: YdSGf09iPeyYVCxohUnGUw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A48461C068C0;
	Tue, 12 Apr 2022 14:43:47 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 726BA407F787;
	Tue, 12 Apr 2022 14:43:47 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 008F71940377;
	Tue, 12 Apr 2022 14:43:47 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 12 Apr 2022 15:43:32 +0100
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: DragonFM won't open text files again after last commit
References: <mailman.7848.1649771817.111207.blinux-list@redhat.com>
 <mailman.7934.1649774110.111208.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.7934.1649774110.111208.blinux-list@redhat.com>
Message-ID: <mailman.7939.1649774619.111208.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

After a quick paru, that didn't solve it.

If I turn debug on, it doesn't show success for the open file for text stuff. Am I simply behind with the AUR stuff or?

I'm on Arch with the latest stuff, and running as of this message the latest AUR version of dragonfm

On Tue, Apr 12, 2022 at 04:35:01PM +0200, Linux for blind general discussion wrote:
> Howdy,
> 
> i found a bug that doesnt respect wildcars for mime subtypes like text/*
> maybe you was affected by this.
> please pull and retry.
> here it works now all as expected.
> 
> cheers chrys
> 
> Am 12.04.22 um 15:56 schrieb Linux for blind general discussion:
> > As it says, after the last commit, I can't open up text files again with right arrow/ctrl+M/enter, I think it's the previous bug returning again. I'm not sure if changing up the python stuff broke it, but I'm noticing the slowdown a little but it's on par with how Caja operates on my system however
> > 
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> > 
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

