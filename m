Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B279B78E
	for <lists+blinux-list@lfdr.de>; Fri, 23 Aug 2019 22:08:29 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 8BAFA796E6;
	Fri, 23 Aug 2019 20:08:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6C81019C4F;
	Fri, 23 Aug 2019 20:08:27 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CE4682551C;
	Fri, 23 Aug 2019 20:08:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
	[10.5.11.11])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x7NK8OkN014571 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 23 Aug 2019 16:08:24 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 970CE600C4; Fri, 23 Aug 2019 20:08:24 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx23.extmail.prod.ext.phx2.redhat.com
	[10.5.110.64])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 90633600C1
	for <blinux-list@redhat.com>; Fri, 23 Aug 2019 20:08:22 +0000 (UTC)
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com
	[209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id E8EEB10576E0
	for <blinux-list@redhat.com>; Fri, 23 Aug 2019 20:08:20 +0000 (UTC)
Received: by mail-ed1-f44.google.com with SMTP id s15so15227092edx.0
	for <blinux-list@redhat.com>; Fri, 23 Aug 2019 13:08:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=BS7vwWj1UhDqD9bu/dsHp+BN/yTc2VhjM1j47Io35qE=;
	b=ADEs7MxfDN4eJTqYKaqBcHi5aLWpVofaaX/Wo7Ov1lC7+Aj1coPQrL8ao7eiCO9Pa1
	kRnR3N1h8tXxn0O53FMRq+ESUsUOXNSc+O8CaT8zTpO4FTQQGmj0P8gPB9675dxajtbq
	8rRM8CBxidlFWuVYqaO+JLQhvJgBnOj6enj4CMcUOGqvCRyQqMCWRTHVWQrXr8qx02iu
	28mZMGyimgY2PKc7LzL0z0otscCIjxAhUN+5g+4oTZrGDqVD3FUfS9b95jrf1QVu67n+
	m7gg1GZupTzTdD/LFJn8PfPS0Rwf8vtvPr0RwaEwzvs54CYVjMcGRuDd4wr8VnQxTQlN
	pTlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=BS7vwWj1UhDqD9bu/dsHp+BN/yTc2VhjM1j47Io35qE=;
	b=f+6V/5uGEN3i0BncGssGr7COkllbOd2mDSPIamrAU9wGM2AhL5IQOPIZ5V0+vLYb2N
	vgpbJa6m/HzHdcsFGQCAdCSikucW/nFKw53fW/zoudZ6BiWTW+ORmP3eAuoBHy7xPtk9
	L+Rduxgh7yQMxHRckaqqrf9CxR4gtSwO803EZ66WiF7nevPXf+Buw5uhK1J3dzXprj/b
	A0nQv8nx2ZMhy+KK3c3z5ucE6Qu/BX7MyyJcX7BmFo/S3JX9eXeXlAoHRzILhK5OxBPH
	4L9Q9HR9UyN99LFUW0HHrR5xT8wVWhw6pKU4+zB/GZkhsR39bamo6hdaC64WVOuBYMXp
	aDjw==
X-Gm-Message-State: APjAAAVLTyHHkhmuSZQo/mTXcBLolWHtX90xExnXbncZc6zzj5lYm1s2
	QrGnlqd1Kx6FRBoh/4bqkjqXouE5
X-Google-Smtp-Source: APXvYqwzcq6wwEpQlcfukoj+qMlJ5/h3aq2VljNA7QpaMqI+4UPKFZULVBCpcWEOR6mUFK8Pn69UWw==
X-Received: by 2002:a50:fd10:: with SMTP id i16mr6285298eds.97.1566590899372; 
	Fri, 23 Aug 2019 13:08:19 -0700 (PDT)
Received: from [192.168.0.13] ([45.222.14.48])
	by smtp.gmail.com with ESMTPSA id
	oe21sm545589ejb.44.2019.08.23.13.08.18 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 23 Aug 2019 13:08:18 -0700 (PDT)
Subject: Re: Slint and VM
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <9371f6c4-35d7-7990-67ed-32cacb736d47@GMAIL.COM>
Message-ID: <8f446f63-2eb6-6d85-5216-3295372bb7a7@gmail.com>
Date: Fri, 23 Aug 2019 22:08:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <9371f6c4-35d7-7990-67ed-32cacb736d47@GMAIL.COM>
Content-Language: en-US
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
	(mx1.redhat.com [10.5.110.64]);
	Fri, 23 Aug 2019 20:08:21 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.64]);
	Fri, 23 Aug 2019 20:08:21 +0000 (UTC) for IP:'209.85.208.44'
	DOMAIN:'mail-ed1-f44.google.com' HELO:'mail-ed1-f44.google.com'
	FROM:'brandt.steenkamp@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.099  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, SPF_HELO_NONE,
	SPF_PASS) 209.85.208.44 mail-ed1-f44.google.com 209.85.208.44
	mail-ed1-f44.google.com <brandt.steenkamp@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.64
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.25]); Fri, 23 Aug 2019 20:08:27 +0000 (UTC)

I tried this under Windows and VMWare player, had the same issue.


No longer an option, soled the Mac with the bootcamp, so have to learn 
virtualization the linux way, since it is all I have now.


Warm regards,

Brandt Steenkamp

Sent using thunderbird on Ubuntu 19.04.

I teach macOS as well as iOS, not because I want to, but because it's easy.

On 2019/08/23 22:04, Linux for blind general discussion wrote:
> Okay, I'm trying to set Slint up in Virtualbox but....using the latest 
> ISO, nothing happens. What settings do I need to config for the VM to 
> work successfully?
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
