Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DE4AB4D5F4D
	for <lists+blinux-list@lfdr.de>; Fri, 11 Mar 2022 11:20:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646994050;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=hj64GW/2/JksomQQgX1a9f0g/UY8wO5ETnXH/ax4Fo4=;
	b=R2i0LVN73pYHojLSS/D8r8BM7yNuvy6g6QsXUEUGswIWyX7jqSfKw1J/03kbTIiU1cKvRR
	dLY94Ce/9m1dZX6Jil0NgYcs+UQxa65zijR6JxVjASDSGbBK8xNDttPfuQtCfsbsYiiXKI
	WbZ6JJIDtUowlfVLv+yFB6yRXWtlQtc=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-211-nJALrZ4HM32QO2VzsTgwoA-1; Fri, 11 Mar 2022 05:20:47 -0500
X-MC-Unique: nJALrZ4HM32QO2VzsTgwoA-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E825E185A794;
	Fri, 11 Mar 2022 10:20:45 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id B1882463EBE;
	Fri, 11 Mar 2022 10:20:43 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 4D41F194034F;
	Fri, 11 Mar 2022 10:20:43 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 11 Mar 2022 18:20:29 +0800 (CST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: timidity question
In-Reply-To: <mailman.1465.1646993442.111206.blinux-list@redhat.com>
References: <mailman.1127.1646925747.111205.blinux-list@redhat.com>
 <mailman.1344.1646965435.111205.blinux-list@redhat.com>
 <mailman.1424.1646969106.111201.blinux-list@redhat.com>
 <mailman.1363.1646973593.111205.blinux-list@redhat.com>
 <mailman.1397.1646974152.111207.blinux-list@redhat.com>
 <mailman.1454.1646974650.111209.blinux-list@redhat.com>
 <mailman.1499.1646975078.111202.blinux-list@redhat.com>
 <mailman.1512.1646980334.111202.blinux-list@redhat.com>
 <mailman.1422.1646988332.111207.blinux-list@redhat.com>
 <mailman.1402.1646991817.111205.blinux-list@redhat.com>
 <mailman.1465.1646993442.111206.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.1534.1646994043.111202.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

default:CARD=PCH

On Fri, 11 Mar 2022, Linux for blind general discussion wrote:

> Date: Fri, 11 Mar 2022 05:10:25 -0500
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: timidity question
> 
> so, alsa. "aplay -L" will list all the alsa devices, which one is after
> "default"? (pulseaudio server maybe?)
>
> On Fri, Mar 11, 2022 at 05:43:25AM +0800, Linux for blind general discussion wrote:
>> Only timidity -Os can play but still no sound.
>>
>> On Fri, 11 Mar 2022, Linux for blind general discussion wrote:
>>
>>> Date: Fri, 11 Mar 2022 03:45:28 -0500
>>> From: Linux for blind general discussion <blinux-list@redhat.com>
>>> To: Linux for blind general discussion <blinux-list@redhat.com>
>>> Subject: Re: timidity question
>>>
>>> it seems as if timidity is working okay, but not outputting to a sound
>>> device/target that is a correct/working one for your system?
>>>
>>> try these three common ones?
>>>  timidity -Os midifile.mid
>>>  timidity -Od midifile.mid
>>>  timidity -Oj midifile.mid
>>>
>>> On Fri, Mar 11, 2022 at 02:31:59AM +0800, Linux for blind general
>>> discussion wrote:
>>>> I can hear test.wav. I'm thinking to recompile timidity++ from source but
>>>> I can only find old version not 2.15.
>>>>
>>>> On Fri, 11 Mar 2022, Linux for blind general discussion wrote:
>>>>
>>>>> Date: Fri, 11 Mar 2022 00:04:24 -0500
>>>>> From: Linux for blind general discussion <blinux-list@redhat.com>
>>>>> To: Linux for blind general discussion <blinux-list@redhat.com>
>>>>> Subject: Re: timidity question
>>>>>
>>>>> Oh OK. I didn't realize you were in fact using the same file. OK so one
>>>>> more shot in the dark that I just thought of. Maybe try running
>>>>>
>>>>> timidity -Ow -o testing.wav midifile.mid
>>>>>
>>>>> of course replacing midifile.mid with the name of the file you are trying
>>>>> to play. Then try to play testing.wav or whatever you called the
>>>>> resulting
>>>>> wav file. If it plays, then you most likely have a problem with
>>>>> timidity's
>>>>> sound output.If testing.wav is silent or does not exist, then you have a
>>>>> different problem not related to either the soundfont or the sound
>>>>> output.
>>>>>
>>>>> ~Kyle
>>>>>
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

