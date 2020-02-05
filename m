Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 2F9631539C3
	for <lists+blinux-list@lfdr.de>; Wed,  5 Feb 2020 21:50:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1580935851;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=LkcGf1DlgCt9slcFTLSz0vbnTRpulfCJhifPm27GKZs=;
	b=aWrhYzlnMcUgshLbbBnLcYJCa0yy8fLFIjNlfTn9MkUkou02Vmg90xt7nQcKX9Z7sV5ZBa
	svBTH9Pk/V362Lzb4SLPQt5x8+BxUdvAWYZqGA8rLyyi8wfyRGO0fXf8mud0kTn09pvFml
	3Vkgs7wnck1t/QactGkC9zDAOmunA/0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-168-B4tJk0_LOSa1N2XmiTXtQg-1; Wed, 05 Feb 2020 15:50:49 -0500
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C6CD7DBA7;
	Wed,  5 Feb 2020 20:50:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AEEE6790E1;
	Wed,  5 Feb 2020 20:50:43 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 681FC8173C;
	Wed,  5 Feb 2020 20:50:40 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 015KoX3S024458 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 5 Feb 2020 15:50:33 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 183912166B2A; Wed,  5 Feb 2020 20:50:33 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 141BA2166B28
	for <blinux-list@redhat.com>; Wed,  5 Feb 2020 20:50:31 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 037C680288E
	for <blinux-list@redhat.com>; Wed,  5 Feb 2020 20:50:31 +0000 (UTC)
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com
	[209.85.167.172]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-102-5GkUF6Q9OIOS16c77ia8mw-1; Wed, 05 Feb 2020 15:50:29 -0500
Received: by mail-oi1-f172.google.com with SMTP id v19so2188319oic.12
	for <blinux-list@redhat.com>; Wed, 05 Feb 2020 12:50:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=W88bvZh2mfmUu3o+VbxKCYhckfz3fTUTLmKS1YXo7RQ=;
	b=EUUqSEvwiEZQfOQHkDVbQAy6cyeGKVkWqWgRMiwCsq6Aq2djd9HmSuSJM9lx7hh8gM
	LBmOvKDHyj7duqfLQlv28rufPjqCciyjXYmP5XXuu9eQ4hHzWabwy5MKOwIpMsvyWjkM
	s1SijH18fjNFJ85E8GaJ5+yN5JdEgTR142Yk1+AdL43mD8YL+zuplkAmYc/71qnRr4ui
	39aBtB7/H1FyjA82TCGoC8iEuQPghKvgZueSUt7FHwuAL3/nldt5y7Vnbne2S8LE4o1g
	CEZ8L0ahl+NYm97lIsr/wi2S54DeLJPRXrtHLCOxwUkAKKO7xATXtl1KS8PRtmHjk2Ds
	YcHw==
X-Gm-Message-State: APjAAAXucuXyG3lGqhNv35CNqY4IVhJm8wiVlP6Ppr9JCkVqSa1YBKs3
	/dVpOnv8gxCb91xDRLALDElDo1O0
X-Google-Smtp-Source: APXvYqxPmU6FLkZAWoTF5LwcSfie1Ei/0oNF11v9UR7RQRmnxdNg2YEZkJttqNNIX6MGgES6IpPAMA==
X-Received: by 2002:a05:6808:64e:: with SMTP id
	z14mr4172869oih.79.1580935827747; 
	Wed, 05 Feb 2020 12:50:27 -0800 (PST)
Received: from ?IPv6:2601:3c2:8200:9360:28e4:ff69:ab2e:c943?
	([2601:3c2:8200:9360:28e4:ff69:ab2e:c943])
	by smtp.gmail.com with ESMTPSA id b9sm276710otf.56.2020.02.05.12.50.26
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 05 Feb 2020 12:50:27 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: Gpodder
Date: Wed, 5 Feb 2020 14:50:25 -0600
References: <CADj8Jxfm9YKA=hho-tQw+q7S7vaJpHX4TjK6oKQh1rcmtabZvw@mail.gmail.com>
	<3C1B0D55-600E-4039-8B15-BD4E58256A7F@gmail.com>
	<alpine.NEB.2.21.2002051157460.19887@panix1.panix.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <alpine.NEB.2.21.2002051157460.19887@panix1.panix.com>
Message-Id: <E94FCC25-FC6B-4D12-8EB7-53CED54CBA42@gmail.com>
X-MC-Unique: 5GkUF6Q9OIOS16c77ia8mw-1
X-MC-Unique: B4tJk0_LOSa1N2XmiTXtQg-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 015KoX3S024458
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I did not know about thatst, press f 7 inside g podder?

> On Feb 5, 2020, at 10:58 AM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> Have you got caret navigation enabled with F7 yet?
> On Wed, 5 Feb 2020,
> Linux for blind general discussion wrote:
> 
>> Date: Wed, 5 Feb 2020 11:52:35
>> From: Linux for blind general discussion <blinux-list@redhat.com>
>> To: Linux for blind general discussion <blinux-list@redhat.com>
>> Subject: Re: Gpodder
>> 
>> I did try that, thanks.
>> Maybe there is an orca setting I need to adjust.
>> I am not getting in to the menu.
>> 
>>> On Feb 4, 2020, at 4:57 AM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>>> 
>>> I just tried out gpodder on my laptop and if you press alt g you will
>>> jump to the menu bar and land in the gpodder menu. from there you can
>>> move and use the other menus in the menu bar.
>>> 
>>> 
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://www.redhat.com/mailman/listinfo/blinux-list
>>> 
>> 
>> 
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://www.redhat.com/mailman/listinfo/blinux-list
>> 
>> 
> 
> -- 
> 
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

