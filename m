Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com [63.128.21.74])
	by mail.lfdr.de (Postfix) with ESMTP id BCE211981BE
	for <lists+blinux-list@lfdr.de>; Mon, 30 Mar 2020 18:55:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585587320;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=BgvGCaS7jXiSRddWwbvHWO8/NCXcS2OxLa4x9TQCi+g=;
	b=bIW4vyqDmeu6N6mYigmjIMX/RwiVrROvACMBehDETeOHgyA1SvXbiSIGqWlcVe6obi5Jpv
	6gPDRJFwyhEQtg+E308OlxfuKEeFiZPeZ/02bDPNf6IjVasYOOLwYq9OdAbEet6WPcr6/g
	E3+IXoI42iB8r6o1j6MHy44Iwpqvbwc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-166-efZOk2ZrMpqg7RJPPWBXOg-1; Mon, 30 Mar 2020 12:55:18 -0400
X-MC-Unique: efZOk2ZrMpqg7RJPPWBXOg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8A01BDBA5;
	Mon, 30 Mar 2020 16:55:08 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D73DAD7688;
	Mon, 30 Mar 2020 16:55:04 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 841D8944CC;
	Mon, 30 Mar 2020 16:54:51 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02UGqepe000945 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 30 Mar 2020 12:52:40 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 3DCC42166B30; Mon, 30 Mar 2020 16:52:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3A1052166B2F
	for <blinux-list@redhat.com>; Mon, 30 Mar 2020 16:52:38 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1198F8FF661
	for <blinux-list@redhat.com>; Mon, 30 Mar 2020 16:52:38 +0000 (UTC)
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com
	[209.85.215.175]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-182-_9T6RUUtMKK3upcvxM2ocg-1; Mon, 30 Mar 2020 12:52:35 -0400
X-MC-Unique: _9T6RUUtMKK3upcvxM2ocg-1
Received: by mail-pg1-f175.google.com with SMTP id c23so545756pgj.3
	for <blinux-list@redhat.com>; Mon, 30 Mar 2020 09:52:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=w9Gldq3UbORJMReJfAEOA6FCcW2a9/wCtPw7rj5OGGA=;
	b=qayaHKPcPQLW798jTANuQtJAI1LfRwQ+tJ5j6N7XJsszWf11QXvuk10NKK0SEXOe85
	pJEh/00mEIKwapnZsTk6k04Rj32zslwsh2OiBNUxsAi0gsjFCcFyqOTIS6C8tI5Qxl5n
	N6aTJ6A4AfqEHwkMrdTKW5d/GfCuRfrEfMAPqmsW4MVx+JXZhXtttVoVp9PDrKHr+Sz1
	Hlf4wVxZGQAwN6rhrPsvTPU7WAjrD/Y3DOmz+nGW7VyJW83KK/fYaNV3Ylcw2ye0wAfB
	brJH2o6VjJydE65HDvLqVusEnrkECVN2hJt3ee24sLvlgi4IBaVQ2EnIrYFSIiadHzJx
	3YoQ==
X-Gm-Message-State: ANhLgQ2IuzDBLJ3hrfckAzHGkKp+OTvXki0nvOXuivhxL/lw1lxXitSM
	i0OjmnvRPHkHIABplPS30nHzu4BrOQk=
X-Google-Smtp-Source: ADFU+vuLwmKe6pdCEsesoqSgxjvtflEg3s1c02COz1VkY/8O1+F8sc9H8D17BUy9Be7GsAH/nfOJRg==
X-Received: by 2002:a62:2f01:: with SMTP id v1mr13593665pfv.136.1585587153798; 
	Mon, 30 Mar 2020 09:52:33 -0700 (PDT)
Received: from [192.168.0.13] (67-1-164-245.tcso.qwest.net. [67.1.164.245])
	by smtp.gmail.com with ESMTPSA id
	g81sm10560960pfb.188.2020.03.30.09.52.33 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 30 Mar 2020 09:52:33 -0700 (PDT)
Subject: Re: installing jenux
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <alpine.NEB.2.21.2003271212120.25315@panix1.panix.com>
Message-ID: <6591e7c6-972c-6e91-6138-d3f5edcd7a24@gmail.com>
Date: Mon, 30 Mar 2020 09:52:31 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
	Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.21.2003271212120.25315@panix1.panix.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

can I please get the url to download the latest iso image of ginux?

the download on your site times out

Hank


On 3/27/2020 9:20 AM, Linux for blind general discussion wrote:
> During a jenux install jenux uses fenrir for a screen reader if
> accessibility mode is enabled.  No boot parameters enables accessibility
> mode.  During jenux install, much fast text will be spoken by the screen
> reader unless insert-f4 is used to toggle speech off and on.  I usually
> toggle speech off until I hear the computer beep and then I know jenux
> installer needs some input.  Then I toggle speech back on and inspect the
> screen and answer questions.  In the mate install path, there's no beep
> before the system asks for the user name and password for the first time
> and this is after all packages have been installed.  Those questions could
> be moved ahead of package installation and answers stored in and retrieved
> from variables but that's not now the case with this installer.  I got a
> mate install with jenux and you log in on the console which is good with
> fenrir then fenrir turns off and the mate environment comes up and orca
> turns on.  I've done a base install with no difficulty earlier.  I will
> try a gnome install next to see if that now works.  When these installs
> fail it's usually because the developer is working on what fails to
> download so when that happens maybe try another install later.  The base
> install which is archlinux console uses fenrir to run.
>
>
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

