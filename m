Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E26456C964
	for <lists+blinux-list@lfdr.de>; Sat,  9 Jul 2022 14:36:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1657370167;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=FZiiYkVmGM64ZLREKSepE7t+CqWZoDMWKCDpHhvI/0E=;
	b=IERnYWoUaKTiUHU9lg/rare03IR34GAG2gnbwGi67VGbm0Fj0byy953Vb9S4OEBEp+TbK1
	dX9BqBQXrvlQO0w/7uqQjmokpMNKbvojYt33POlYwGz/MjbEOEaqazp7T9Bbrr7FZIFpLI
	aVATbTIEXVRuJc2JZJ+gOYzO4u/lvAQ=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-628-TEwcMhq4Phi7dR06-5i71A-1; Sat, 09 Jul 2022 08:35:57 -0400
X-MC-Unique: TEwcMhq4Phi7dR06-5i71A-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D7D28101AA45;
	Sat,  9 Jul 2022 12:35:55 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 41A48492C3B;
	Sat,  9 Jul 2022 12:35:53 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id A80C41947079;
	Sat,  9 Jul 2022 12:35:52 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: I3wm, any progress?
In-Reply-To: <mailman.32420.1657364089.111201.blinux-list@redhat.com>
References: <mailman.32420.1657364089.111201.blinux-list@redhat.com>
User-Agent: Notmuch/0.36 (https://notmuchmail.org) Emacs/28.1
 (x86_64-pc-linux-gnu)
Date: Sat, 09 Jul 2022 14:34:02 +0200
MIME-Version: 1.0
Message-ID: <mailman.32225.1657370151.111208.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


Hi,

Yes, I use I3WM as my daily driver on Arch Linux. The trick with being
productive with I3 is to configure its config file (mine is in
~/.config/i3/config).

The manual is straightforward. Since I do not do the taskbar checking,
that is where you may have problems for checking notifications and
battery status etc.

Linux for blind general discussion <blinux-list@redhat.com> writes:

> So, I was told the other week I3 works with Orca.
>
> Anyone had any luck with getting i3 to work with Orca up till now? I 
> mean, if it can be made to work, it'd suit my laptop more than a full 
> fledged desktop. So I'm stil curious on this
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

