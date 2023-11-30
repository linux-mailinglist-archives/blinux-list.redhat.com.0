Return-Path: <blinux-list+bncBCVPTHE7K4IPRFFDVMDBUBE643UPW@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id AB8607FF8AE
	for <lists+blinux-list@lfdr.de>; Thu, 30 Nov 2023 18:46:33 +0100 (CET)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-423f4652604sf14701471cf.2
        for <lists+blinux-list@lfdr.de>; Thu, 30 Nov 2023 09:46:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701366392; x=1701971192;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gl4LOxh90WJf+yMRbWx7RdkZNN+8NiU8NPB5Y1B8l8w=;
        b=bhS++EwvJpSkR4u8E3ZW7c/7n8XbQuxSgbmvNYsKJ3QD3iLA9bmcKmaeEGcmPw0jZV
         Ga9Qw4SUbw2b5crLt+nBGNtM50X8lhIT5dbm/5p/rMU2XHNCNTeDU+MMjq5Ys6O6n8A3
         cgJiZZNUzDdT4hlWhZlqIkjJVI2YiRdFj5l4ao30fcyDKdX8Was53H+9wCVxayqH4GEn
         kjOD3gqxYlB4Y6jChKVooDt9eFzMVb9CGYQa3g6+XfEw4QEuD8eH2b7tZHm8M0cgMM9E
         j9T+pxScGyewEIR5oJpsV/lZ84mjPVeMP1yDDyp86whKPu1KYfFdrTBCmSl9mU3Aze3+
         fvDw==
X-Gm-Message-State: AOJu0YzR4DKB7Gsm2gTtjx/oH88sz9ayEhgN1xbMx2nVPJJMgNXwlRig
	xMC+YRMXIL97G4L6rA8E7Biakg==
X-Google-Smtp-Source: AGHT+IHfmRxaMDxroDIM2qFOtTEi3+rULBDFcIGd7EA7L5Rtivthla/YqDOe8bKbmnc0VZOE1nWiRA==
X-Received: by 2002:a05:622a:647:b0:423:9598:1878 with SMTP id a7-20020a05622a064700b0042395981878mr25414321qtb.25.1701366392438;
        Thu, 30 Nov 2023 09:46:32 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5bcd:0:b0:423:84c3:cf93 with SMTP id b13-20020ac85bcd000000b0042384c3cf93ls667662qtb.1.-pod-prod-06-us;
 Thu, 30 Nov 2023 09:46:31 -0800 (PST)
X-Received: by 2002:a05:620a:6088:b0:77d:6802:8455 with SMTP id dx8-20020a05620a608800b0077d68028455mr26333118qkb.26.1701366391332;
        Thu, 30 Nov 2023 09:46:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701366391; cv=none;
        d=google.com; s=arc-20160816;
        b=i7CBKLR1beNVR6YMUb59XHQe63hn9CbM2lScB+4Hfa7C8aVxCKq0WtF8HMuuIgL6Ku
         OZLaEAw16JZKcnPlL1vMpuzdx3AsVH7XBAMrNl3AlHLdffivsIr83yrtMZvuxw6ICXrz
         OkQ4/9WJNgIkKgh2LfClacCvlhc5QCJgsoe0LJvctUwt3kcFs60/EgscrYc6OFBZ0dj1
         FhaIjkh/DoXPPYAqMEFsPGDXr7fh+xKqCJryGBwfog/CCuV+xSNwRYR2FwUIb2LEUx6/
         eqpkBS6kYBpVV9c4xpaevwnjoOJ0M9UmIWuYs98Q6GjR/7m/hHtceIIin2ENlbeFxSaT
         F5mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=gl4LOxh90WJf+yMRbWx7RdkZNN+8NiU8NPB5Y1B8l8w=;
        fh=bCabGQs3jn1s0M0qXUniS/CTf8AL/F0wZwsNHkuqrnc=;
        b=BDxnCydxnQ5QwgTnEngXg2xbzjPGTQPRVuxmpHfu8iEBWFUJYoNB9YohGIgMb9K3TG
         8F62pO6VwuL/0w+dLQz+69Idma7ih6gb5L9DzJFRaCaorRr3kt2Zh+w7WsGVZZNw8eZs
         xji/7gO+LYY3oDALwBKZ6x1QQoYbx+R7fSu0Ov1z/rgMqlUenfKS6R7PdabjPCzLw0Gc
         MYoORMn5uhsDU5DvWbJvr//V4goT26/KfNja326jhgwwQYtowgc+yL5XPIcwtYVnfsdz
         GfojmUZB0mDeJzfyHFsNsniGhzIVA2E1QtOhjqyNhHDbSxZAxyjlNLZzj+tiqR/g0u8D
         K+3w==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id tq21-20020a05620a3d1500b0077dcd3716ffsi1305768qkn.745.2023.11.30.09.46.31
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Nov 2023 09:46:31 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-413-GGMr78C5MeOF1iMGIvTlXw-1; Thu, 30 Nov 2023 12:46:29 -0500
X-MC-Unique: GGMr78C5MeOF1iMGIvTlXw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 85B95185A781
	for <blinux-list@gapps.redhat.com>; Thu, 30 Nov 2023 17:46:29 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 82DA8C15983; Thu, 30 Nov 2023 17:46:29 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7C8CBC1596F
	for <blinux-list@redhat.com>; Thu, 30 Nov 2023 17:46:29 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5CC2688D128
	for <blinux-list@redhat.com>; Thu, 30 Nov 2023 17:46:29 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-690-JdlECbebN9urrLGwtUk9hg-1; Thu,
 30 Nov 2023 12:46:27 -0500
X-MC-Unique: JdlECbebN9urrLGwtUk9hg-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 0ABC844FC7;
	Thu, 30 Nov 2023 12:46:26 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id BADF51001B6; Thu, 30 Nov 2023 12:46:25 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id B93A6100094;
	Thu, 30 Nov 2023 12:46:25 -0500 (EST)
Date: Thu, 30 Nov 2023 12:46:25 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Jude DaShiell <jdashiel@panix.com>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: quick links are numbered question?
In-Reply-To: <5d011372-8b4d-d519-6fc8-f54549926285@panix.com>
Message-ID: <Pine.LNX.4.64.2311301240060.3728928@users.shellworld.net>
References: <Pine.LNX.4.64.2311292019330.3718624@users.shellworld.net>
 <c9277002-d894-203e-511b-952f27c98048@panix.com>
 <Pine.LNX.4.64.2311292132230.3719449@users.shellworld.net>
 <7640c72f-2f0b-9f4f-11f4-5d660150b273@panix.com>
 <Pine.LNX.4.64.2311292213270.3720159@users.shellworld.net>
 <7634f774-0813-cb35-2519-7ceb2e4216af@panix.com>
 <Pine.LNX.4.64.2311301103200.3728673@users.shellworld.net>
 <5d011372-8b4d-d519-6fc8-f54549926285@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Original-Sender: klewellen@shellworld.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of klewellen@shellworld.net designates 23.24.6.165 as permitted
 sender) smtp.mailfrom=klewellen@shellworld.net
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

Jude,
That is a chime question.
My only direct access to e-links is via shellworld.  Links are already 
numbered here.
the wisdom around links the chain was perfect, there is a DOS build of 
Links  the chain with JavaScript that I use on my desktop, now it has 
numbered links.
The one thing I truly wish though?
is that there was a way to get links the chain to speak better.
when I ssh to shellworld or dreamhost using links the chain here, 
everything speaks just fine.
I am unsure if there is an option that leads to this,  but if there is a 
write to bios one or something it would be wonderful.
as it is I must use the speak full window, or go into review mode, or read 
by line for  speech when using my DOS build of links the chain on my 
desktop.
Its a shame too because the links build with JavaScript actually works in 
rather a few places.
Kare



On Thu, 30 Nov 2023, Jude DaShiell wrote:

> Is it only numbered links you need when working with elinks?  If you need
> more options than that, let me know.
>
>
> --
> Jude <jdashiel at panix dot com>
> "There are four boxes to be used in defense of liberty:
> soap, ballot, jury, and ammo.
> Please use in that order."
> Ed Howdershelt 1940.
>
> On Thu, 30 Nov 2023, Karen Lewellen wrote:
>
>> Jude,
>> I dare say this applies only to a personal build?
>> Speaking personally, I am not a programmer, and the script concept seems more
>> trouble then simply reaching the menu bar, but that is  just me.
>> Kare
>>
>>
>>
>> On Thu, 30 Nov 2023, Jude DaShiell wrote:
>>
>>> With these browsers a command like:
>>> elinks --help|less
>>> makes the command options come up at a more reasonable pace and it's
>>> possible to write a script like mylinks.sh that starts the browser has all
>>> your favorite command line options on the same line and ends with $1 which
>>> takes an url if you type
>>> mylinks <url>
>>> later once you make the script executable.
>>> If you figure out you need more command line options and you know what
>>> those options are, edit the mylinks script again and you don't need to
>>> mess with menus any longer.
>>>
>>>
>>> --
>>> Jude <jdashiel at panix dot com>
>>> "There are four boxes to be used in defense of liberty:
>>> soap, ballot, jury, and ammo.
>>> Please use in that order."
>>> Ed Howdershelt 1940.
>>>
>>> On Wed, 29 Nov 2023, Karen Lewellen wrote:
>>>
>>>> And Jude provides the command line option.
>>>> Thanks.
>>>>
>>>>
>>>>
>>>> On Wed, 29 Nov 2023, Jude DaShiell wrote:
>>>>
>>>>> links -html-numbered-links=1 should do that for you.
>>>>>
>>>>>
>>>>> --
>>>>> Jude <jdashiel at panix dot com>
>>>>> "There are four boxes to be used in defense of liberty:
>>>>> soap, ballot, jury, and ammo.
>>>>> Please use in that order."
>>>>> Ed Howdershelt 1940.
>>>>>
>>>>> On Wed, 29 Nov 2023, Karen Lewellen wrote:
>>>>>
>>>>>> I did say links the chain, you are thinking of l y n x which is not the
>>>>>> same
>>>>>> browser.
>>>>>>
>>>>>>
>>>>>>
>>>>>> On Wed, 29 Nov 2023, Jude DaShiell wrote:
>>>>>>
>>>>>>> There is no keystroke for that.  You can turn that on in options or
>>>>>>> start
>>>>>>> lynx with lynx -number_fields.
>>>>>>>
>>>>>>>
>>>>>>> --
>>>>>>> Jude <jdashiel at panix dot com>
>>>>>>> "There are four boxes to be used in defense of liberty:
>>>>>>> soap, ballot, jury, and ammo.
>>>>>>> Please use in that order."
>>>>>>> Ed Howdershelt 1940.
>>>>>>>
>>>>>>> On Wed, 29 Nov 2023, Karen Lewellen wrote:
>>>>>>>
>>>>>>>> Hi folks,
>>>>>>>> for those using links the chain, there is a command line option that
>>>>>>>> turns
>>>>>>>> on
>>>>>>>> links are numbered.
>>>>>>>> Can someone remind me of the keystroke?
>>>>>>>> Thanks,
>>>>>>>> Karen
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>
>>>>>>> --
>>>>>>> You received this message because you are subscribed to the Google
>>>>>>> Groups
>>>>>>> "blinux-list@redhat.com" group.
>>>>>>> To unsubscribe from this group and stop receiving emails from it, send
>>>>>>> an
>>>>>>> email to blinux-list+unsubscribe@redhat.com.
>>>>>>>
>>>>>>>
>>>>>>
>>>>>>
>>>>>
>>>>
>>>
>>
>>
>>
>

