Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 73F7D184DE7
	for <lists+blinux-list@lfdr.de>; Fri, 13 Mar 2020 18:48:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584121689;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=xp5q033nGqvkNAPb3PMAnFBH3AuDyC0RHbFWEJhw9bk=;
	b=h/92LFI775l+miadYJHH6THITvm4lPMmsbSTyUpz1XNT+e3oZKJP5R1p+lzUnxXP9P5zjv
	tuR9uT1qUEaAApHLsL9oVgdcrBmefQCO8GMjURO74y10aSN5ztnnQ6KBY+A3fuIN8JTpd9
	gF50DysDZKKEC25LP4FFYtSSgd7Bt4Q=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-197-k3RLIiKvO6GcMDvDdEX8Pw-1; Fri, 13 Mar 2020 13:48:07 -0400
X-MC-Unique: k3RLIiKvO6GcMDvDdEX8Pw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1062B800D48;
	Fri, 13 Mar 2020 17:48:03 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DA8555D9CA;
	Fri, 13 Mar 2020 17:48:02 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 943C08446C;
	Fri, 13 Mar 2020 17:48:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02DHm0FB013259 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 13 Mar 2020 13:48:00 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 444FE1055236; Fri, 13 Mar 2020 17:48:00 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3E6A510552DF
	for <blinux-list@redhat.com>; Fri, 13 Mar 2020 17:47:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 13CE2802BFE
	for <blinux-list@redhat.com>; Fri, 13 Mar 2020 17:47:56 +0000 (UTC)
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com
	[209.85.167.175]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-467-XFKnQ4MhM7-tHokukL63lA-1; Fri, 13 Mar 2020 13:47:53 -0400
X-MC-Unique: XFKnQ4MhM7-tHokukL63lA-1
Received: by mail-oi1-f175.google.com with SMTP id i1so10259342oie.8
	for <blinux-list@redhat.com>; Fri, 13 Mar 2020 10:47:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=YmtUBsb9yey7UHMopR7oDB0XG8nmvcn2u/KofpRuOEk=;
	b=LnqwMxDZvvjhG8+mmqTV++ONsDBhZJ3X7sZZc/ytpyv/vqwoUfi+S+csQ5ycFJemkh
	h+vAaO768FJY4AQWTd+4s/ve6DARSfdacOWaBzk3COJltd5Ri78LY1yXu81GqOL6JENS
	PsndmGdKjsgMc8l6D2xJWwnCMG20pY30b4SbkxgL6AcmihgCtZkafaFPzk5EKoDGP3H8
	MohLnNXvoeVv2C9G38W6udnpvlR1l9rJLLz30Z81a+7mBg+mKa/iTYj5OJVduB8Ggyzg
	4DQbUa3WSnb5IEnPFFtOf98IolJCVUaF0Ed30OZBgDfK3qeD0827VTaQ7l8AP/4cHWoR
	tO+Q==
X-Gm-Message-State: ANhLgQ1bo1Hnd0Yc2XltWr4vgY3GvtWVOsoyGx8FiNxhKLzoocIgTfeO
	WEiXZquRW9oBA0OPzJ7G0A4GyN2kS1/TbyH/4v2IjQ==
X-Google-Smtp-Source: ADFU+vvf5ehJE1KVUuus2nxgPXZyojxldKlffUVHYBRlfUstFxBG5lJH1grkx6kSnwPTRjMRqyjGEQ7JUzkB1pdj+co=
X-Received: by 2002:aca:be09:: with SMTP id o9mr8152564oif.177.1584121672632; 
	Fri, 13 Mar 2020 10:47:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6830:201a:0:0:0:0 with HTTP; Fri, 13 Mar 2020 10:47:51
	-0700 (PDT)
In-Reply-To: <alpine.NEB.2.21.2003131343530.23185@panix1.panix.com>
References: <6b72c0c6-6a71-e688-4448-789876e33a34@slint.fr>
	<4d35e0f7-1bed-49f3-9f07-ba0129d66dcc@localhost>
	<000a01d5f93d$6af79770$40e6c650$@yandex.com>
	<Pine.LNX.4.64.2003131317210.19101@server2.shellworld.net>
	<alpine.NEB.2.21.2003131343530.23185@panix1.panix.com>
Date: Fri, 13 Mar 2020 17:47:51 +0000
Message-ID: <CAO2sX332v9YcjmaVF0-HQoY7-0=y4aNcGCfrOtAVdfQZtUzT0A@mail.gmail.com>
Subject: Re: Stormux is born.
To: blinux-list@redhat.com
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 02DHm0FB013259
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

And then there are people, like me, who prefer e-mail to modern social
media, hence just one reason why it's good to have multiple options
for communication.


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

