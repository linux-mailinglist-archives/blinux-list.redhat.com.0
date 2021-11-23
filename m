Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC1945AA81
	for <lists+blinux-list@lfdr.de>; Tue, 23 Nov 2021 18:47:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637689640;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=RvCF8iHI7OK0iuYibYdGhmMGO4L7/AILvGV1C60Ez5s=;
	b=BsDwzSnIOrNJsS/CTnZsWr7WcsWgldFIJfZ70noSKKM1PaX8DwFxh1mWpZ4SKtuEIUNWws
	r0jRaRYPF6KxpFBo6ysh1ty9Hh/UOa9zwo4uof5T9fN/w2oJBtikxEHTMkrtP3H1C8TkmQ
	gAMQm9d95G405cx5Q/x3qYE9vSEu5zc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-321-7U4fssjSPACP1RZ43jD_mw-1; Tue, 23 Nov 2021 12:47:16 -0500
X-MC-Unique: 7U4fssjSPACP1RZ43jD_mw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 848E0101AFA8;
	Tue, 23 Nov 2021 17:47:12 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6FFB267842;
	Tue, 23 Nov 2021 17:47:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 12A794A704;
	Tue, 23 Nov 2021 17:47:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ANHkci3027283 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 23 Nov 2021 12:46:39 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id DA8D61121319; Tue, 23 Nov 2021 17:46:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D58D71121315
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 17:46:33 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B8F5F811E85
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 17:46:33 +0000 (UTC)
Received: from ms11p00im-qufo17281601.me.com (ms11p00im-qufo17281601.me.com
	[17.58.38.53]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-40-FpByn2NIMfCIhoGB4GBxpA-1; Tue, 23 Nov 2021 12:46:32 -0500
X-MC-Unique: FpByn2NIMfCIhoGB4GBxpA-1
Received: from [192.168.0.39] (c-73-237-149-120.hsd1.ga.comcast.net
	[73.237.149.120])
	by ms11p00im-qufo17281601.me.com (Postfix) with ESMTPSA id 6B875BE04DD
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 17:38:10 +0000 (UTC)
Subject: Re: looking for two gui accessible applications ClipGrab
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <2eddfb0e-a139-be53-97a8-2e2468ee9d4a@gmail.com>
	<ee33bad3-902b-2d23-0dd4-81feee9b7308@icloud.com>
	<8309b0ad-c705-e8bc-7141-bfe85a667189@icloud.com>
	<de101cdb-81a9-ab6e-4a77-446442ef3d04@gmail.com>
Message-ID: <c4fb736f-b117-f9f6-54da-4a76e260339b@icloud.com>
Date: Tue, 23 Nov 2021 12:38:08 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <de101cdb-81a9-ab6e-4a77-446442ef3d04@gmail.com>
X-Proofpoint-Virus-Version: =?UTF-8?Q?vendor=3Dfsecure_engine=3D1.1.170-22c6f66c430a71ce266a39bfe25bc?=
	=?UTF-8?Q?2903e8d5c8f:6.0.425, 18.0.790,
	17.0.607.475.0000000_definitions?=
	=?UTF-8?Q?=3D2021-11-23=5F06:2021-11-23=5F01, 2021-11-23=5F06,
	2020-04-07?= =?UTF-8?Q?=5F01_signatures=3D0?=
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
	suspectscore=0
	malwarescore=0 phishscore=0 bulkscore=0 mlxscore=0 spamscore=0
	clxscore=1015 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1
	engine=8.12.0-2009150000 definitions=main-2111230087
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi,

You need to give it execute permission.

press alt plus enter

choose the permissions tab

check the execute checkbox.


Thanks,

Rob

On 11/23/21 11:31 AM, Linux for blind general discussion wrote:
> thanks a million for suggesting this application. From the 
> description, this application sounds similar to Ponte's Media downloader.
>
> Unfortunately, I could not run this executable image on my slint 
> desktop. Everytime I try to open it, I get a message that says there 
> is no application installed to open executable files, or such thing. 
> It gives me the option to search for one with yes or no, but the 
> default choice is no.
>
> Since I am a beginner, I do not understand this message. I hit enter 
> on yes, but nothing happened.
>
> Hoopefully someone who has experience with opening such files would 
> help me figure it out.
>
> Cheers,
>
> Ibrahim
>
> On 11/22/21 1:45 PM, Linux for blind general discussion wrote:
>> I use ClipGrab on my Mac and Windows.
>>
>> So I checked and it is on Linux as well.
>>
>> www.clipgrab.org
>>
>> Its a app image, no installation needed.
>>
>>
>> Use the flat review to click the download tab.
>>
>> paste the youtube link in the edit field.
>>
>> tab to the combo box to choose origonal, or mp3 audio .
>>
>> pressing the down arrow in this combo box had no speech, so after 
>> pressing down arrow, press tab, then shift tab to have the selection 
>> spoken.
>>
>> Do the same for the quality combo box.
>>
>> then tab to the grab this clip button and press the space bar.
>>
>>
>> I hope this helps.
>>
>> Thanks,
>>
>> Rob
>>
>> On 11/22/21 11:59 AM, Robert Cole wrote:
>>> Hi,
>>>
>>> I dont know of any gui programs,
>>>
>>> but you can try
>>>
>>> www.mp3-now.com
>>>
>>>
>>> Thanks,
>>>
>>> Rob
>>>
>>>
>>> On 11/22/21 10:50 AM, Linux for blind general discussion wrote:
>>>> Hello friends,
>>>>
>>>> I am wondering if there are good applications for downloading from 
>>>> youtube that works well with linux! I am looking for something 
>>>> similar to Ponte's media downloader which works well with windows 
>>>> screen readers. Is there such an app?
>>>>
>>>> The second application I am hoping to find is a good weather app. I 
>>>> tried to the weather on the terminal and did not like it at all. 
>>>> So, I am hoping to find a better alternative that works on the gui.
>>>>
>>>> Cheers,
>>>>
>>>> Ibrahim
>>>>
>>>> _______________________________________________
>>>> Blinux-list mailing list
>>>> Blinux-list@redhat.com
>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>>
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
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

