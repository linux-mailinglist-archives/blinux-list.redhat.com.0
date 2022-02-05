Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 99EE64AA4E5
	for <lists+blinux-list@lfdr.de>; Sat,  5 Feb 2022 01:07:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644019666;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=3DR+0nqqAvj77p0VTrITFP4rPxA2hLBRpsRQ2t5wbR0=;
	b=BBBstjS8acOSnNH9hw7UJbIqSLP4pnvPPcfsnzwLfNMklrEC/OX7AoztSAbK5jWozkam62
	ldYGE68JMcmF5C1bs1UPHUhErLhrgykcNA702FqT3qea1hAbExyVlAk2fVGhwGW0/WyNN9
	7j7KNxW2uefouGr9wmipGR3mAG17Ul4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-617-sz84a-OMNoy6gb9w0ZyLew-1; Fri, 04 Feb 2022 19:07:43 -0500
X-MC-Unique: sz84a-OMNoy6gb9w0ZyLew-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2B50018A0F1C;
	Sat,  5 Feb 2022 00:07:39 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 713916C1A2;
	Sat,  5 Feb 2022 00:07:36 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3D3701809CB8;
	Sat,  5 Feb 2022 00:07:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 215035KJ026125 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 4 Feb 2022 19:03:05 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 7CE1B1120ABD; Sat,  5 Feb 2022 00:03:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 77F1A1120AB3
	for <blinux-list@redhat.com>; Sat,  5 Feb 2022 00:03:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4A7193802ACA
	for <blinux-list@redhat.com>; Sat,  5 Feb 2022 00:03:02 +0000 (UTC)
Received: from st43p00im-ztdg10061801.me.com (st43p00im-ztdg10061801.me.com
	[17.58.63.170]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-64-yGvXAlzmNiq0gayUXotsfg-1; Fri, 04 Feb 2022 19:03:00 -0500
X-MC-Unique: yGvXAlzmNiq0gayUXotsfg-1
Received: from [192.168.0.39] (c-73-237-149-120.hsd1.ga.comcast.net
	[73.237.149.120])
	by st43p00im-ztdg10061801.me.com (Postfix) with ESMTPSA id EC61EC0501
	for <blinux-list@redhat.com>; Sat,  5 Feb 2022 00:02:59 +0000 (UTC)
Message-ID: <cb0030ca-3242-f314-2ded-fb385c9fb5d5@icloud.com>
Date: Fri, 4 Feb 2022 19:02:58 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: Help with YT-DLP
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <d3189fce-4aee-cb12-9498-2e19f7692ae0@icloud.com>
	<87F1D5DF-B674-4C23-8D16-FA6F8E345415@linux-a11y.org>
	<b6b3ae87-95f6-9e92-0d91-51da13c97572@icloud.com>
	<20220204.224600.337.7@[192.168.1.100]>
In-Reply-To: <20220204.224600.337.7@[192.168.1.100]>
X-Proofpoint-Virus-Version: =?UTF-8?Q?vendor=3Dfsecure_engine=3D1.1.170-22c6f66c430a71ce266a39bfe25bc?=
	=?UTF-8?Q?2903e8d5c8f:6.0.138, 18.0.572,
	17.0.605.474.0000000_definitions?=
	=?UTF-8?Q?=3D2020-02-14=5F11:2020-02-14=5F02, 2020-02-14=5F11,
	2020-01-23?= =?UTF-8?Q?=5F02_signatures=3D0?=
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
	bulkscore=0 mlxscore=0
	mlxlogscore=999 suspectscore=0 clxscore=1015 spamscore=0 malwarescore=0
	adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
	engine=8.12.0-2009150000 definitions=main-2202040130
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

OK thanks,

I like this, having the link at the end is easier.

Thanks,

Rob


On 2/4/22 17:46, Linux for blind general discussion wrote:
> My usual youtube-dl line is as follows
> yt-dlp -ciw -x --audio-format mp3 -o "%(title)s.%(ext)s" <video-link>
> This names the file as title.mp3
> ----- Original Message -----
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Date: Fri, 4 Feb 2022 17:19:23 -0500
> Subject: Re: Help with YT-DLP
>
>> Thank you Chrys,
> That fixed it.
>
> Now I need to find out how to have the video named, instead of just
> letters and numbers.
>
> Thanks,
>
> Rob
>
>
> On 2/4/22 16:57, Linux for blind general discussion wrote:
>> Howdy Rob,
>>
>> Well there is an open single tick but missing the closing one in -o parameter. So the string is not terminated.
>>
>> Cheers chrys
>>
>>> Am 04.02.2022 um 22:40 schrieb Linux for blind general discussion <blinux-list@redhat.com>:
>>>
>>> ?Hi,
>>>
>>> I am trying to use yt-dlp to convert YouTube video to mp3.
>>>
>>> I installed the latest version of yt-dlp using the info below.
>>>
>>> sudo wget https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -O /usr/local/bin/yt-dlp
>>>
>>> sudo chmod a+rx /usr/local/bin/yt-dlp
>>>
>>> update command
>>> yt-dlp -U
>>>
>>> When I use the below command, I get nothing but a greater than sign.
>>>
>>> yt-dlp -f 'ba' -x --audio-format mp3 https://www.youtube.com/watch?v=dQw4w9WgXcQ -o '%(id)s.mp3
>>>
>>>
>>> Thanks,
>>>
>>> Rob
>>>
>>>
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

