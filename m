Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 589764F757C
	for <lists+blinux-list@lfdr.de>; Thu,  7 Apr 2022 07:50:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649310608;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=7DlFF0YvMdHZE6vTLH0i5cd4aHKKRHDszcbC6TPT4kc=;
	b=P8oDRXL8F4CGd/YIFd9u9FNzETIPD2B61BxCRZAiidzWyiKiTa/NmrXNcXZNAJZoraPM1C
	DIpS92CRXtWvqWpRxqziA4XyjezIXtGEmHdxVMP6hm48B5UUnIbO2VPkboG0poaHcyFyXy
	bpPK2ShEy6jSNTuZdxClbYJ0bSD4LK0=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-121-oEThrPKjPgy25PyVy8O6aQ-1; Thu, 07 Apr 2022 01:50:05 -0400
X-MC-Unique: oEThrPKjPgy25PyVy8O6aQ-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D3F02833959;
	Thu,  7 Apr 2022 05:50:03 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id E4B76416368;
	Thu,  7 Apr 2022 05:49:58 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 91B0F194036C;
	Thu,  7 Apr 2022 05:49:54 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 7 Apr 2022 01:49:37 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: different desktops
In-Reply-To: <mailman.7030.1649299107.111208.blinux-list@redhat.com>
References: <mailman.6893.1649230241.111206.blinux-list@redhat.com>
 <mailman.6722.1649237413.111209.blinux-list@redhat.com>
 <mailman.6967.1649240845.111210.blinux-list@redhat.com>
 <mailman.6938.1649249456.111201.blinux-list@redhat.com>
 <ca820abb-dbb3-60c5-39c3-5e316b483ecf@free2.ml>
 <mailman.7030.1649299107.111208.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.7063.1649310594.111208.blinux-list@redhat.com>
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

You want to get on the status bar or top bar, I haven't checked out f10,
but sometimes useful stuff is opened with menus in there.


On Wed, 6 Apr 2022, Linux for blind general discussion wrote:

> Just having a look at Cinnamon on Fedora 35. It's not too bad, and I do like
> the alt+f1 workspace switcher. Although I can't arrange my workspaces on
> screen in a 3-by-3 grid the way I like them, it allows me to press alt+f1 and
> then a single digit to go to the workspace with that number. I can also
> navigate using the arrows to the workspaces once I do get 9 of them, and they
> are in a 3-by-3 grid in the switcher. It appears that I can interact with
> notifications in much the same way I would with GNOME, and this is largely
> accessible to Orca. There's lots of flat review stuff I need to do, but I
> don't mind that too terribly much. The main problem I'm having is that I don't
> know how to access the panel or panels. Alt+control+tab just seems to switch
> between application windows in much the same way as alt+tab. If I can't get
> that figured out soon, I'll probably stay with MATE here.
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

