Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 2AA381F8AD9
	for <lists+blinux-list@lfdr.de>; Sun, 14 Jun 2020 23:08:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592168912;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=k4kYMlUgWOnBEgQZfKpjVFIIsPBU5uswqZvh2ItUogA=;
	b=IWuZK/5BiLXqh4cDgz2t8x4VXDE935y/+DVpLowb9YqO3+d5xhQFl5wYwRBQwd82Lb2zPr
	zo+5iI8bSvXC7xpHHKBYoTrgU9vYtUx4V58GNF2HeIXTs9fiCjNn5RgfkCfuFYRUs9z57m
	3zgey19qDSTQu6HdmArsupxdYi0b7DM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-410-yiOeaMJcOyKDvo54l0ziPw-1; Sun, 14 Jun 2020 17:08:29 -0400
X-MC-Unique: yiOeaMJcOyKDvo54l0ziPw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C958480B70A;
	Sun, 14 Jun 2020 21:08:25 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 40C9C1A8EA;
	Sun, 14 Jun 2020 21:08:25 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 75A10833BC;
	Sun, 14 Jun 2020 21:08:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05EL8JLt004383 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 14 Jun 2020 17:08:19 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 7967320267F2; Sun, 14 Jun 2020 21:08:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 741E92026971
	for <blinux-list@redhat.com>; Sun, 14 Jun 2020 21:08:17 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DDE7D101A526
	for <blinux-list@redhat.com>; Sun, 14 Jun 2020 21:08:16 +0000 (UTC)
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com
	[209.85.160.179]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-164-2IienrcUPxu-bd0J2TlmDQ-1; Sun, 14 Jun 2020 17:07:49 -0400
X-MC-Unique: 2IienrcUPxu-bd0J2TlmDQ-1
Received: by mail-qt1-f179.google.com with SMTP id q14so11104730qtr.9
	for <blinux-list@redhat.com>; Sun, 14 Jun 2020 14:07:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=bECVsaoQQFHPvjAinBq2lSSqqWZH1S511Hz2rCL+55E=;
	b=BwRiEysZNyXcKF2IRTrUJyuBjWsUbaC3CA7hv+VFSpCUFdLMXfITdSvQoUcsORq5Tv
	mgYn0AirxYFLGfTEVHB0Mi/5HqWCyxpQibwJlDf3WuO1pt9jx6VwGG5ZRos78mrijUiR
	zOaU0DLiLsvrabEd+tYiJZVwso9TJbSEjEDffGh/cmDcFWyCi/m4DCv6jz3fEzVQwIJ1
	dFySAdWHMJ8sn3dz3lTTmgUnBz6l9xzn2nHvzAubpsjuy2psxzecF2yO9FiiI0cvK039
	f0I1oU/S9phYWkkVNI2YZXpvxosjrrZ4euVQvSP+eW0bXhQW2u5OcmUBMbcVNMkJkcY2
	MYrQ==
X-Gm-Message-State: AOAM533naK4+evHPSQl4fpgPgzeNRyiTQ2DvYYsxVhOkj6K1JjQNvIql
	uJck1OLDcbtQ7PMEi3xUkMKT4+FEpjSDnWii74zHdxFP
X-Google-Smtp-Source: ABdhPJxVi88Vczly2uln9jXTvs50ZegxM5uU8eiU9m0PS9OcT7/xtk0ASFOtO0zK5e1PMqRSdMhADqxt99cBbRIQd28=
X-Received: by 2002:ac8:378f:: with SMTP id d15mr12989804qtc.136.1592168868867;
	Sun, 14 Jun 2020 14:07:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:ea4a:0:0:0:0:0 with HTTP; Sun, 14 Jun 2020 14:07:48
	-0700 (PDT)
In-Reply-To: <alpine.DEB.2.22.394.2006141355001.3348482@chime>
References: <CABKqQvFWNxksnpwQ0YfytwaYnd1bAkkWB9LjmnJtZWW_1zepyw@mail.gmail.com>
	<498E62FA-D270-418F-91D0-003022B137B5@cfcl.com>
	<DF019091-ECBE-48AC-8B3F-A85FCB13F98F@gmail.com>
	<68F8B348-C5F3-4E40-9731-CB928C1E1786@cfcl.com>
	<3FF9DFF0-EBA2-41FA-AF6D-41A15F7D96B3@gmail.com>
	<1E64643A-5D91-45E2-A546-970F7E14EF28@cfcl.com>
	<alpine.DEB.2.22.394.2006141355001.3348482@chime>
Date: Sun, 14 Jun 2020 21:07:48 +0000
Message-ID: <CAO2sX3303jh7VGCnVr7k1_-AvwDxweFkwq4jFjFQkK77qrgfcg@mail.gmail.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

This list use to include the sender's screen name and e-mail address,
but went completely anonymous a few years ago due to some spambots
flooding everyone's inboxes with sexually suggestive messages
everytime someone posted to the list.

Personally, I kind of like it since it means replies I make are sent
to the list and only the list by default when Gmail has this annoying
habit of sending replies only to the last person in the thread instead
of the list, not offering the option to send just to the list and
liking to add everyone I reply to to my contacts whether I want it to
or not.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

