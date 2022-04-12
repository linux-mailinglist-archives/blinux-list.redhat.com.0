Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 506C04FE42E
	for <lists+blinux-list@lfdr.de>; Tue, 12 Apr 2022 16:52:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649775129;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=r78VjJ2QnsaziHuaNgGQ0sq3cKMB7crkZhG78uAI7j4=;
	b=io2RH7ZxwD3FjdNFYzNv/lhjFDwVrnHYPs0bOLfktqrvQljQ4Vgb1xhBMItI0jtz1BMUiN
	JfD3UywQ8+e/6W5QvGzNh9I5FBLhMFB8stRubsSay1//si61P8iRasoALB1msH3WkWIWWV
	Ph6E1Abd2Q4JczbpXL1RiE6U5d270Pg=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-593-ucG06WroMxyYGvQt3jm98g-1; Tue, 12 Apr 2022 10:52:06 -0400
X-MC-Unique: ucG06WroMxyYGvQt3jm98g-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3D69B18A6583;
	Tue, 12 Apr 2022 14:52:04 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 9EF0440E80F4;
	Tue, 12 Apr 2022 14:52:03 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id E835B1940377;
	Tue, 12 Apr 2022 14:52:02 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 12 Apr 2022 15:51:56 +0100
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: DragonFM won't open text files again after last commit
References: <mailman.7848.1649771817.111207.blinux-list@redhat.com>
 <mailman.7934.1649774110.111208.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.7934.1649774110.111208.blinux-list@redhat.com>
Message-ID: <mailman.8090.1649775122.111201.blinux-list@redhat.com>
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
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Okay after clearing out the settings folder, the cache and doing paru -S dragonfm-git again that sorted it.

I'm now curious if it's safe to remove the stuff on the open with... line, the cat and less stuff or does that need to be thereOn Tue, Apr 12, 2022 at 04:35:01PM +0200, Linux for blind general discussion wrote:
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

