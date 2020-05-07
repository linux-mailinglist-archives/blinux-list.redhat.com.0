Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 64DE31C94DF
	for <lists+blinux-list@lfdr.de>; Thu,  7 May 2020 17:21:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1588864883;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=WQszNM9RWB4ShzW0yOYkCTvTlqRFSxGcCLu8VVqwav0=;
	b=hWAoSS8RzfosK3YnWz3go0nwxWwq/yNDby30qG6vhy/aOi9sIef7Hf5jGvktu++8jJLN8C
	h0fgwFgRhMnOSrv7PeMsoXuuvik/MB3g+6qTVA/zfesnhNbxhOIz2nb2SDpmqqA9BxtBfT
	sVT7RWoaZ/xOMKZDmo7JQNF+D61D1y4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-165-ORMzWYXxOxiHTCUaHw02Sw-1; Thu, 07 May 2020 11:21:21 -0400
X-MC-Unique: ORMzWYXxOxiHTCUaHw02Sw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2797E107ACF5;
	Thu,  7 May 2020 15:21:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6346A5D9C5;
	Thu,  7 May 2020 15:21:16 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 28F811809542;
	Thu,  7 May 2020 15:21:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 047FL9NE000500 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 7 May 2020 11:21:09 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 9D19111230A; Thu,  7 May 2020 15:21:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 98B24112318
	for <blinux-list@redhat.com>; Thu,  7 May 2020 15:21:07 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A6A1B101A525
	for <blinux-list@redhat.com>; Thu,  7 May 2020 15:21:07 +0000 (UTC)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com
	[209.85.167.46]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-297-ulPiTQXBNJirBcpnIH5G7A-1; Thu, 07 May 2020 11:21:05 -0400
X-MC-Unique: ulPiTQXBNJirBcpnIH5G7A-1
Received: by mail-lf1-f46.google.com with SMTP id s9so4819432lfp.1
	for <blinux-list@redhat.com>; Thu, 07 May 2020 08:21:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=XBKcIdRCOybFhu/bCP5PbNH1oTUu+Pa9AQRasb1GPLU=;
	b=VTgXZ0/aqmPn+vX44ALToJxr7x+8Xst0FGOO87BSRoBvS2DHssyKR9Udh4qHtZhtnF
	FoUvUHAUcgf+KMCLrRSQjtOlOOqlsDqcdjzmB/1A0AQKvoas/cQpOXcp7BOmp9KRvpER
	5MG7B0d6rc6hMKHNqQCIf923I20vRP5YSjmGri9eXWydLDijiFzwFbM5neWVNL8aV3NI
	ANIxXMrtoqml34ZppdzStrOXGICsCHq94hSkTu+zMl6+vuPY8m738HnD3gD/k3sL+N9T
	GVFf6c6GugrpC8wh2Fj1DF5T214osu6yzJMrTt+XLd+xu4qHfiX0BlgOyR2+odLNT1CW
	WOAQ==
X-Gm-Message-State: AGi0PuZ87ICiHjNYmp1V6L8fQvyM9GA4gK2Es0lcUEtN801X7INENG87
	XwFGVL9a0iQkvYqAArDltu17ZNtLfsI=
X-Google-Smtp-Source: APiQypLpBNYkiKnsogi2oKYHBoMblXiRAFNm9Dc3rGMMT5q5J0984TBfQQJ00KLdSYiPeAEqTTSptg==
X-Received: by 2002:ac2:4304:: with SMTP id l4mr9289134lfh.87.1588864863305;
	Thu, 07 May 2020 08:21:03 -0700 (PDT)
Received: from [192.168.0.14] ([45.222.12.73])
	by smtp.gmail.com with ESMTPSA id
	z21sm3549694ljh.42.2020.05.07.08.21.01 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 07 May 2020 08:21:02 -0700 (PDT)
Subject: Re: Anything besides vanilla Arch?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <008e01d62459$7b0c9600$7125c200$@GMAIL.COM>
	<5D2DB0EA-D8FA-4CF5-98B1-1CFABF15DCC9@cfcl.com>
Message-ID: <50e7488e-b3ec-033a-3569-74095e91f183@gmail.com>
Date: Thu, 7 May 2020 17:21:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <5D2DB0EA-D8FA-4CF5-98B1-1CFABF15DCC9@cfcl.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

Hi again,


Unfortunately at this time I have no time to play around with single 
board computers. Stormux is a great idea, just not for me at this time.


I might give Jenux a go though. At least I know where my stuff should be 
installed, I hope.


Warm regards,


Brandt Steenkamp


Sent using Thunderbird from Ubuntu Mate 20.04


On 2020/05/07 16:27, Linux for blind general discussion wrote:
>> On May 7, 2020, at 03:22, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>>
>> Are there any Arch based distros we can actually install without sighted help?
> Stormux (https://stormux.org) is an Arch-based system that runs on the Raspberry Pi 3 or 4.
>
> -r
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

