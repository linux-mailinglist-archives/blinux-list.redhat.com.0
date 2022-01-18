Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 853554920D2
	for <lists+blinux-list@lfdr.de>; Tue, 18 Jan 2022 09:02:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642492939;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Bnviu6XUNccj+vhfDPMo/bAgHSf+ygq9yIEIMSUZipU=;
	b=LHaQ+i+NcunFb/TEnEtfUauJ1+wYu7InYduZBA4i6YVgdLJsT8w/IeUGDvyxPibc5iq2Np
	tg9yLAc6Ql5uePqf1iZW4OY+WNFkW5d7JMELo26dxsZKsEan4CyZDfR08hwfVMIbgC8AO8
	V7FtuD+adwtUo6pV7/e+4Ka9rx+eGjo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-481-7rA_20etOtqYPyHaXpGbKQ-1; Tue, 18 Jan 2022 03:02:17 -0500
X-MC-Unique: 7rA_20etOtqYPyHaXpGbKQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3FC28814249;
	Tue, 18 Jan 2022 08:02:13 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7F21C607B6;
	Tue, 18 Jan 2022 08:02:11 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AFC621809CB8;
	Tue, 18 Jan 2022 08:02:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20I81wN0016406 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 18 Jan 2022 03:01:58 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 5E8871121333; Tue, 18 Jan 2022 08:01:58 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 599DB1121331
	for <blinux-list@redhat.com>; Tue, 18 Jan 2022 08:01:55 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EBDCF83718A
	for <blinux-list@redhat.com>; Tue, 18 Jan 2022 08:01:54 +0000 (UTC)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com
	[209.85.208.43]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-137-Isu_Q0qkOYm3spUTOV6Ewg-1; Tue, 18 Jan 2022 03:01:51 -0500
X-MC-Unique: Isu_Q0qkOYm3spUTOV6Ewg-1
Received: by mail-ed1-f43.google.com with SMTP id cx27so2372500edb.1
	for <blinux-list@redhat.com>; Tue, 18 Jan 2022 00:01:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:mime-version:subject:date:references:to
	:in-reply-to:message-id;
	bh=tZSnx8YPlBsEb+cwf3uLlncQWPA14nzWMGsiZnVKyOY=;
	b=F4JRfQCdH1GSsrcreXafHKyqnan3cQiOTu1BAP4TBrJSBp7+fTdyzRBkWcJGN0wmg/
	7/YROxljgAZhOFoyuUiDchVZ3x03qEPG5PAqTMWSZGutpwaq+3xssW4ez4BuGHk2dQKw
	4uj/3agXJbBZsNZihKq5pzwTbWqOPepZkXWHML0DUt45xt6BK1cWgS5pgwq8NWreTX+v
	Xl3/YG7Xq+cUj3xj6q1uiYJA7yf0wCU5NqVi+fexunflRBMeQbfw+Uif1aCHkuJiXfOg
	7hBXJFoxWAiGDN8s4dCDgs8Kcly6QytbXP4iD4F69xZivQ0GVmsdzAcPEwt+C8c2HZi5
	JEkA==
X-Gm-Message-State: AOAM531UgdWCOm2I15B9YYjjX6m0VdxN7xQA8NgrrTjj10pM9vQBijIg
	oJo8v7ff77tVUS1ddg870Nk8Y5bvWdflJQ==
X-Google-Smtp-Source: ABdhPJwYeJZM6Pho3gKRDtb6ETP9ByHCZ/vDOqhFcYeLVm3wW8kVhN+hp3n351h9FmNgcL+wOI1ykA==
X-Received: by 2002:a05:6402:31e9:: with SMTP id
	dy9mr24162984edb.65.1642492910125; 
	Tue, 18 Jan 2022 00:01:50 -0800 (PST)
Received: from smtpclient.apple ([197.184.179.158])
	by smtp.gmail.com with ESMTPSA id 4sm5117701ejc.160.2022.01.18.00.01.47
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 18 Jan 2022 00:01:49 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3693.40.0.1.81\))
Subject: Re: Getting Started with linux
Date: Tue, 18 Jan 2022 10:01:45 +0200
References: <7d95c4a2-beae-efc3-9998-792c3a9cbdef@gmail.com>
	<b6d7e61-4ff9-dc82-a7d4-2f6ee97bf1e1@panix.com>
	<cb6c740b-5aac-6472-9419-ad31e9c25692@gmail.com>
	<574571f2-a341-c700-d94a-415f76bc936e@gmail.com>
	<PH0PR14MB429684C61B04748E06FC0EC4C8579@PH0PR14MB4296.namprd14.prod.outlook.com>
	<f953fedb-15e7-6e96-c9ed-875a3dc199a3@gmail.com>
	<e97a7d7d-4aff-eeb3-98d-ba51311d7ebe@panix.com>
To: blinux-list@redhat.com
In-Reply-To: <e97a7d7d-4aff-eeb3-98d-ba51311d7ebe@panix.com>
Message-Id: <1C7C853C-EBEB-4B80-AC7E-7C27F45F20EA@gmail.com>
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
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I thought the same, but couldn't find it anywhere.

If anyone can, please let me know where.

Warm regards,

Brandt Steenkamp

Sent from my MacBook Air

Contact:

Phone: +27 (0)60 525 9181 <tel://+27605259181>

Email: brandt.steenkamp@gmail.com <mailto:brandt.steenkamp@gmail.com>

Twitter: @brandtsteenkamp <http://www.twitter.com/brandtsteenkamp>




> On 18 Jan 2022, at 03:55, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> I  thought the keyboard selection got saved in a single file somewhere in
> /etc/ but can't remember the file.  If that is correct, a destructive echo
> statement into that file with the preferred keyboard setting ought to
> solve this problem for you.
> 
> 
> On Mon, 17 Jan 2022, Linux for blind general discussion wrote:
> 
>> Hi again,
>> 
>> 
>> My biggest gripe with Gnome is the fact that the Settings is almost impossible
>> to use. For example, I use the Left-Hand Dvorak keyboard because I only have a
>> usable left hand. This is really easy to set in Mate, but not in Gnome. I
>> could never do so, no matter whos instructions I followed.
>> 
>> 
>> I am willing to give Gnome a fair shot, if I can fix my Keyboard, otherwise
>> it's like trying to race against a Ferrari with a mountain bike. My
>> productivity is shot all to hell, and I refuse to do that to myself.
>> 
>> 
>> Warm regards,
>> 
>> Brandt Steenkamp
>> 
>> Sent from the Slint machine using Thunderbird
>> 
>> On 2022/01/17 03:05, Linux for blind general discussion wrote:
>>> Well, simpler is a subjective term. I prefer Gnome over Mate and I find
>>> Gnome to use a lot of the same concepts that I use on my Windows 10 desktop.
>>> 
>>> --
>>> Christopher (AKA CJ)
>>> Chaltain at Outlook
>>> 
>>> -----Original Message-----
>>> From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On
>>> Behalf Of Linux for blind general discussion
>>> Sent: Sunday, January 16, 2022 9:54 AM
>>> To: Linux for blind general discussion <blinux-list@redhat.com>
>>> Subject: Re: Getting Started with linux
>>> 
>>> Hi,
>>> 
>>> 
>>> I personally do not like vanilla Ubuntu, simply because the Gnome desktop
>>> does not make any sence to me at all. If it was me, and at one point, long,
>>> long ago, it was, I'd download Ubuntu Mate, simply because the desktop is a
>>> hell of a lot simpler to get use to, and also a lot more like the
>>> traditional Windows Desktop in the sence that you can, if you so wish, put
>>> all your crap on it, unlike Gnome.
>>> 
>>> Warm regards,
>>> 
>>> Brandt Steenkamp
>>> 
>>> Sent from the Slint machine using Thunderbird
>>> 
>>> On 2022/01/16 17:19, Linux for blind general discussion wrote:
>>>> Well, it sounds like you're telling me to run linux under windows?
>>>> That isn't what I had in mind.  Here's what I've learned thus far:
>>>> I need to download a linux OS; then make a bootable media and install
>>>> the linux ISO to it.
>>>> 
>>>> Well, I did that:
>>>> downloaded ubuntu-20.04.3-desktop-amd64.iso and (for flashing it to
>>>> the thumb drive) balenaEtcher-Portable-1.7.3.exe made a bootable thumb
>>>> drive and installed ubuntu on it.
>>>> 
>>>> 
>>>> Now I need to learn how to install ubuntu from the thumb drive.  I
>>>> must search for instructions to go on from here.
>>>> 
>>>> Thanks.
>>>> Howard
>>>> 
>>>> 
>>>> On 1/15/2022 5:53 PM, Linux for blind general discussion wrote:
>>>>> Ubuntu or Fedora could do that for you. alt-windows-s toggles speech
>>>>> on and off and you want to choose try ubuntu or try fedora buttons on
>>>>> the desktop screen.  Desktop screen is windows-d once system boots
>>>>> and you have speech.
>>>>> 
>>>>> 
>>>>> On Sat, 15 Jan 2022, Linux for blind general discussion wrote:
>>>>> 
>>>>>> Hello all,
>>>>>> 
>>>>>> I've been wanting to try out linux but haven't wanted to give up or
>>>>>> mess up any of my working windows systems.  Would it be possible to
>>>>>> install some version of linux on a CD or a DVD; then just boot a
>>>>>> computer from that disk bypassing windows altogether?  If so, I'd
>>>>>> have to make it either talk or drive a Braille display.
>>>>>> 
>>>>>> Wonder if anyone would have any suggestions?  Thank you.
>>>>>> 
>>>>>> Howard
>>>>>> 
>>>>>> _______________________________________________
>>>>>> Blinux-list mailing list
>>>>>> Blinux-list@redhat.com
>>>>>> https://na01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flis
>>>>>> tman.redhat.com%2Fmailman%2Flistinfo%2Fblinux-list&amp;data=04%7C01%
>>>>>> 7C%7Cfe38b46afc414198073d08d9d9088f04%7C84df9e7fe9f640afb435aaaaaaaa
>>>>>> aaaa%7C1%7C0%7C637779453051272973%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC
>>>>>> 4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;
>>>>>> sdata=l%2FF6pHvWTMOK02cIEtBbNm%2FCE%2BBvc5d%2B7Itgt1CEfCs%3D&amp;res
>>>>>> erved=0
>>>>>> 
>>>>> _______________________________________________
>>>>> Blinux-list mailing list
>>>>> Blinux-list@redhat.com
>>>>> https://na01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flist
>>>>> man.redhat.com%2Fmailman%2Flistinfo%2Fblinux-list&amp;data=04%7C01%7C
>>>>> %7Cfe38b46afc414198073d08d9d9088f04%7C84df9e7fe9f640afb435aaaaaaaaaaa
>>>>> a%7C1%7C0%7C637779453051272973%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLj
>>>>> AwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata
>>>>> =l%2FF6pHvWTMOK02cIEtBbNm%2FCE%2BBvc5d%2B7Itgt1CEfCs%3D&amp;reserved=
>>>>> 0
>>>> _______________________________________________
>>>> Blinux-list mailing list
>>>> Blinux-list@redhat.com
>>>> https://na01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flistm
>>>> an.redhat.com%2Fmailman%2Flistinfo%2Fblinux-list&amp;data=04%7C01%7C%7
>>>> Cfe38b46afc414198073d08d9d9088f04%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7
>>>> C1%7C0%7C637779453051272973%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMD
>>>> AiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata=l%2F
>>>> F6pHvWTMOK02cIEtBbNm%2FCE%2BBvc5d%2B7Itgt1CEfCs%3D&amp;reserved=0
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://na01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flistman.redhat.com%2Fmailman%2Flistinfo%2Fblinux-list&amp;data=04%7C01%7C%7Cfe38b46afc414198073d08d9d9088f04%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C637779453051272973%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata=l%2FF6pHvWTMOK02cIEtBbNm%2FCE%2BBvc5d%2B7Itgt1CEfCs%3D&amp;reserved=0
>>> 
>>> 
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>> 
>> 
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>> 
> 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

