Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1953F535405
	for <lists+blinux-list@lfdr.de>; Thu, 26 May 2022 21:37:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1653593847;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=TMDMtDVuzpx8HvQyBZnECtOa8pQDsXr/6/DXmmNPdvg=;
	b=iHlZhz6uvD6Q4gF5iUCFeJut2io9hsf3T6WTUn3sWcwZKSQZ+IaQw47Pk5PtKOn1MtekiD
	f0oH5WmrfNIHaMtCgWb4izaettg1LEuIfa4l9vIxYRjn3GbxLiIBVONQR4qZr8EqOIUCcU
	zwVexy+E5Dq8orBXKcLc5ieQ7Up9rdc=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-588-ul6BttkAMXacQHcZ1EMxww-1; Thu, 26 May 2022 15:37:23 -0400
X-MC-Unique: ul6BttkAMXacQHcZ1EMxww-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 667C280418F;
	Thu, 26 May 2022 19:37:21 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id E32B12166B29;
	Thu, 26 May 2022 19:37:15 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 69740193212F;
	Thu, 26 May 2022 19:37:15 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 26 May 2022 15:37:10 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: alpine and Gmail future changes?
In-Reply-To: <mailman.18686.1653588679.111203.blinux-list@redhat.com>
References: <4e42aba7-4da4-8e33-0968-b7492da81094@gmail.com>
 <933cd1dc-db4e-f903-b964-8eb0f3be2019@busby.net>
 <mailman.18876.1653584281.111206.blinux-list@redhat.com>
 <mailman.18894.1653587968.111206.blinux-list@redhat.com>
 <mailman.18482.1653588063.111205.blinux-list@redhat.com>
 <mailman.18686.1653588679.111203.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.18697.1653593834.111203.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Chime,
It differs mostly because the person   actually involved with alpine 
development runs the list.
Karen



On Thu, 26 May 2022, Linux for blind general discussion wrote:

> Thanks Didier, I am subscribing. How does this list differ from the Usnet 
> group "comp.mail.pine"? Thanks in advance
> Chime
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

