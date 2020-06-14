Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 994A21F8B34
	for <lists+blinux-list@lfdr.de>; Mon, 15 Jun 2020 00:42:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592174565;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=FjotwdkuPYo7onyBvS53yv3m2QLY2taWrYENKBWK9sg=;
	b=OMIdHWDe03S26AIVhFDIaq6FKalwY7vdhAXkueBrqT+oFPMIxDl5eut9pq3DyjIr5UZ+Fc
	m8vk06ArGyjP6QCfrNKXwzRpBYbMCx/4jnJQNG/07U1mNWY1Py3J0CcjDxfrhgSGEEUa1L
	9qyU52LB0Oqltb8JXSxaliLdu3X9w3s=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-167-ZAEU5S4RNu2e6737pk8MKA-1; Sun, 14 Jun 2020 18:42:38 -0400
X-MC-Unique: ZAEU5S4RNu2e6737pk8MKA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CFDDE1005512;
	Sun, 14 Jun 2020 22:42:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 97DBA5C1C3;
	Sun, 14 Jun 2020 22:42:33 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D4C3C833BF;
	Sun, 14 Jun 2020 22:42:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05EMgTZh010756 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 14 Jun 2020 18:42:29 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 14CFA110F3A2; Sun, 14 Jun 2020 22:42:29 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1097A110F39E
	for <blinux-list@redhat.com>; Sun, 14 Jun 2020 22:42:27 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 017D1101A526
	for <blinux-list@redhat.com>; Sun, 14 Jun 2020 22:42:27 +0000 (UTC)
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com
	[209.85.210.46]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-299-6iilWddyMmuUugBYQadc5g-1; Sun, 14 Jun 2020 18:42:09 -0400
X-MC-Unique: 6iilWddyMmuUugBYQadc5g-1
Received: by mail-ot1-f46.google.com with SMTP id e5so11652008ote.11
	for <blinux-list@redhat.com>; Sun, 14 Jun 2020 15:42:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=TYcbiwRu+KeWisCJwgdOl1K1svmqMD76FnznI3nwRiI=;
	b=ub6QfwEFK/geQ2nBxdiptpbwWXhV0xx/0Z45v4G6hvv/YXN71/WauW5rXwK1EOnsBw
	P/+m18IWz0BH8oH5UFAr8qJUsFH8vETTXmBLCG9pFjvLsgaeuTgVpckTj11XjSoUy6XF
	JjqfB+LCMK7ARS3J9qb14vsa7WcQwxBsqlgmexKLBtdhiIhO1Yq71rTHlLnbkSN0DCzw
	OyM/mzrSWzEhfJNo6ScQUTejTTQhmTLmXQmFo26TM01wHFwcuBMxivsxcRWTmSj+7Yl4
	dhtwcRHi1l53ujscE138ptjtTJaAYuNdgRaxkSszJeGg0QSI8nJjmUTnOdYiPiIaYgJq
	jZEw==
X-Gm-Message-State: AOAM532jUf+yYmJ9uKKwPfpVqqqDTmYFEllD+O3DLwvPTCgoUHwgIgE/
	Yq3Gc/Rer7AOcUYki8+TA1ivJ+vRf4A=
X-Google-Smtp-Source: ABdhPJw5Z7Rs6koWw7T0FVGEjnOO3IiWgzi81BtiZKtvoD46GToNDljred+ihQtV1RvmvizoKxkmeg==
X-Received: by 2002:a9d:170c:: with SMTP id i12mr19928957ota.321.1592174528503;
	Sun, 14 Jun 2020 15:42:08 -0700 (PDT)
Received: from ?IPv6:2601:3c2:8200:9360:65c8:3c65:c272:f700?
	([2601:3c2:8200:9360:65c8:3c65:c272:f700])
	by smtp.gmail.com with ESMTPSA id
	t22sm2999325oth.53.2020.06.14.15.42.07 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 14 Jun 2020 15:42:07 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.5\))
Subject: Re: Prospects for an accessible and open version of Android?
Date: Sun, 14 Jun 2020 17:42:06 -0500
References: <CABKqQvFWNxksnpwQ0YfytwaYnd1bAkkWB9LjmnJtZWW_1zepyw@mail.gmail.com>
	<498E62FA-D270-418F-91D0-003022B137B5@cfcl.com>
	<DF019091-ECBE-48AC-8B3F-A85FCB13F98F@gmail.com>
	<68F8B348-C5F3-4E40-9731-CB928C1E1786@cfcl.com>
	<3FF9DFF0-EBA2-41FA-AF6D-41A15F7D96B3@gmail.com>
	<1E64643A-5D91-45E2-A546-970F7E14EF28@cfcl.com>
	<alpine.DEB.2.22.394.2006141355001.3348482@chime>
	<CAO2sX3303jh7VGCnVr7k1_-AvwDxweFkwq4jFjFQkK77qrgfcg@mail.gmail.com>
To: blinux-list@redhat.com
In-Reply-To: <CAO2sX3303jh7VGCnVr7k1_-AvwDxweFkwq4jFjFQkK77qrgfcg@mail.gmail.com>
Message-Id: <6EB87DEB-AE7A-4374-A203-F2E8CB376348@gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 05EMgTZh010756
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

What happens if I would like for someone to write straight to me?

> On Jun 14, 2020, at 4:07 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> This list use to include the sender's screen name and e-mail address,
> but went completely anonymous a few years ago due to some spambots
> flooding everyone's inboxes with sexually suggestive messages
> everytime someone posted to the list.
> 
> Personally, I kind of like it since it means replies I make are sent
> to the list and only the list by default when Gmail has this annoying
> habit of sending replies only to the last person in the thread instead
> of the list, not offering the option to send just to the list and
> liking to add everyone I reply to to my contacts whether I want it to
> or not.
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
> 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

