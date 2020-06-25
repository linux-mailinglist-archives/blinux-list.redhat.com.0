Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 4F4AF209FF7
	for <lists+blinux-list@lfdr.de>; Thu, 25 Jun 2020 15:33:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1593091981;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=AQlqVE1dwL82ZVGuUjlF9M8VadJXKQMyFGlZ5H/D0ew=;
	b=Aji2KqGlBIw6DKbH/5pZJBlV4Bu/DLnewtCtAuhHN63zoROJLwqFstLPCarY9mTyWJzzCb
	AbgmkpAaC75TVZbQIKcKKQNwpM4hXXUni1MtOn8F0q3+/nk+J6jC0EEj5f1foQXqqeXtIM
	VO+PZsrc1AfiSd/okia9qFyqZ98Ov6I=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-346-w6Wwj2s6Oi-l8h6Zifmt0A-1; Thu, 25 Jun 2020 09:32:59 -0400
X-MC-Unique: w6Wwj2s6Oi-l8h6Zifmt0A-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 42967464;
	Thu, 25 Jun 2020 13:32:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CA57760C1D;
	Thu, 25 Jun 2020 13:32:54 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8938387582;
	Thu, 25 Jun 2020 13:32:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05PDWpIq001308 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 25 Jun 2020 09:32:51 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 56D062022EA2; Thu, 25 Jun 2020 13:32:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4904720234BA
	for <blinux-list@redhat.com>; Thu, 25 Jun 2020 13:32:49 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 43210108C26C
	for <blinux-list@redhat.com>; Thu, 25 Jun 2020 13:32:49 +0000 (UTC)
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com
	[209.85.160.170]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-318-2UaUpp9BNza5BWew6EL8Fg-1; Thu, 25 Jun 2020 09:32:46 -0400
X-MC-Unique: 2UaUpp9BNza5BWew6EL8Fg-1
Received: by mail-qt1-f170.google.com with SMTP id z1so4587370qtn.2
	for <blinux-list@redhat.com>; Thu, 25 Jun 2020 06:32:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=G4OMoLVpjZrIkKq6oAtzQXZKulR0QOp8g53CQW4TA+w=;
	b=DUEaZq4+veGQ9NIActxVY8mbSVkf91A59jTZEADJ3LLrhwzQWl8xjy0Uvg99WHUa2D
	JO6XhUXlRWsiLV4qBDfsoA1VIxFK2cQUA1b7hYJgNk70OesIGHXR2bW40Wpd5+45pQG3
	D7sG8XoyY2KsnoUky2c8haNqmAVvwDXMcfb1AvYhJZUd0s8gUxMMOl1g5feXHTr9Vplw
	awoE5eMKkxpGP0QG9JWkgaljFS7Cy1FVYnRRmE9eX9/KqFAnXkOFc77VSUJcdVitLjQ3
	Phv7rDhzNEeonFw1rgYEyZuZmUA8or2IUNMXXPUIlkZa0zSShp+aU+6q6hVfymL2K2Pa
	i86Q==
X-Gm-Message-State: AOAM533fEelCfbPoQvd3UmLi3W4HHoHziI0bvYyLLk+hiYiSQMQXqAhx
	vpqu36O6aCM+KH3KyWTyGZaTxHWRxytmTqny+05CTD0i
X-Google-Smtp-Source: ABdhPJwxMUj6FrHGvk683xGj9Xxep7Ut7IcodbDZOSnErM4n8JB8YJWQp+SPfB2TZ/Upidf2X8CJNPxiWZUHuSMUhn8=
X-Received: by 2002:aed:279d:: with SMTP id a29mr17020893qtd.112.1593091965635;
	Thu, 25 Jun 2020 06:32:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:ea4a:0:0:0:0:0 with HTTP; Thu, 25 Jun 2020 06:32:45
	-0700 (PDT)
In-Reply-To: <CAO2sX30VsKxkCqGryAoqeqKHhs1Bi-dLMamNmz21+F-7VrmY6w@mail.gmail.com>
References: <CAO2sX31aVwswLgsx=JjjjLGw8waC+hvBBVag60UBB5JbSFRYnQ@mail.gmail.com>
	<20200622.140639.018.15@192.168.1.130>
	<004701d648e3$0ac2e850$2048b8f0$@gmail.com>
	<CAO2sX31=Tkng2Zms9yLK7gVEyz+HKHDck5PEbTqL4xCe+diK=w@mail.gmail.com>
	<e606c651-4507-ad22-6a20-53753364f1f5@verizon.net>
	<CABKqQvEu6kC9SS7BCYK349DnxAh2moF1xLBFVoXBa1Hag5uHXA@mail.gmail.com>
	<63801353-D7D0-43CF-B340-E95876634B1C@gmail.com>
	<CAO2sX325iMBmhA4hs+iY5jNZ+weePFrRBgyk81BZT7Kyy23t8w@mail.gmail.com>
	<20200624120822.GG2690@rednote.net>
	<83CB53E7-F6D3-4B37-BA8D-EE7DBA340BF8@gmail.com>
	<20200625121548.GB245455@rednote.net>
	<CAO2sX30VsKxkCqGryAoqeqKHhs1Bi-dLMamNmz21+F-7VrmY6w@mail.gmail.com>
Date: Thu, 25 Jun 2020 13:32:45 +0000
Message-ID: <CAO2sX32DGABVbzM0Fov2k+qkG=MqVc9EoBX9ZpN6490QNZY-XA@mail.gmail.com>
Subject: Re: Prospects for an accessible and open version of Android?
To: blinux-list@redhat.com
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Oh, and I also listen forward to reading about your experiences with
the MeerKat.

-Jeff

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

