Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A1AD44594ED
	for <lists+blinux-list@lfdr.de>; Mon, 22 Nov 2021 19:46:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637606793;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=cs7LfoZDCL3zc7itRlUTi8Y7FfxZWC0n5LqerB+YP6w=;
	b=LtFli1AAgJ00nZEOwg+yJphTkdGuAL+J6+8ZC9w2olwdX6uaymfcnc0PjPpGvl3HNk4tTa
	SM93819QdSdpov27Q1Ah7uVFqX6pBVpfvrDYxRAMMIMdznvktip3zSsqPTStCrSwJGR0tt
	Gp3CW2rW30PcZ08n7E5BhrKLBgPCee4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-159-p7FDUba0OP2NOwcMY0280g-1; Mon, 22 Nov 2021 13:46:29 -0500
X-MC-Unique: p7FDUba0OP2NOwcMY0280g-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1F5D91006AA2;
	Mon, 22 Nov 2021 18:46:25 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7A5E460BD8;
	Mon, 22 Nov 2021 18:46:23 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 383BA4A702;
	Mon, 22 Nov 2021 18:46:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AMIk6DS005850 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 22 Nov 2021 13:46:06 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id F0A6E2166B26; Mon, 22 Nov 2021 18:46:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EAEBF2166B25
	for <blinux-list@redhat.com>; Mon, 22 Nov 2021 18:46:03 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 23A688371BE
	for <blinux-list@redhat.com>; Mon, 22 Nov 2021 18:46:03 +0000 (UTC)
Received: from st43p00im-ztdg10061801.me.com (st43p00im-ztdg10061801.me.com
	[17.58.63.170]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-21-sVLcE5PaN0K7fvXKYqrU8g-1; Mon, 22 Nov 2021 13:45:58 -0500
X-MC-Unique: sVLcE5PaN0K7fvXKYqrU8g-1
Received: from [192.168.0.39] (c-73-237-149-120.hsd1.ga.comcast.net
	[73.237.149.120])
	by st43p00im-ztdg10061801.me.com (Postfix) with ESMTPSA id 778038C0669
	for <blinux-list@redhat.com>; Mon, 22 Nov 2021 18:45:57 +0000 (UTC)
Subject: Re: looking for two gui accessible applications ClipGrab
References: <2eddfb0e-a139-be53-97a8-2e2468ee9d4a@gmail.com>
	<ee33bad3-902b-2d23-0dd4-81feee9b7308@icloud.com>
To: Blinux <blinux-list@redhat.com>
Message-ID: <8309b0ad-c705-e8bc-7141-bfe85a667189@icloud.com>
Date: Mon, 22 Nov 2021 13:45:56 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <ee33bad3-902b-2d23-0dd4-81feee9b7308@icloud.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.425, 18.0.790
	definitions=2021-11-22_08:2021-11-22,
	2021-11-22 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
	malwarescore=0
	phishscore=0 bulkscore=0 spamscore=0 clxscore=1015 mlxscore=0
	mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-2009150000 definitions=main-2111220095
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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

I use ClipGrab on my Mac and Windows.

So I checked and it is on Linux as well.

www.clipgrab.org

Its a app image, no installation needed.


Use the flat review to click the download tab.

paste the youtube link in the edit field.

tab to the combo box to choose origonal, or mp3 audio .

pressing the down arrow in this combo box had no speech, so after 
pressing down arrow, press tab, then shift tab to have the selection spoken.

Do the same for the quality combo box.

then tab to the grab this clip button and press the space bar.


I hope this helps.

Thanks,

Rob

On 11/22/21 11:59 AM, Robert Cole wrote:
> Hi,
>
> I dont know of any gui programs,
>
> but you can try
>
> www.mp3-now.com
>
>
> Thanks,
>
> Rob
>
>
> On 11/22/21 10:50 AM, Linux for blind general discussion wrote:
>> Hello friends,
>>
>> I am wondering if there are good applications for downloading from 
>> youtube that works well with linux! I am looking for something 
>> similar to Ponte's media downloader which works well with windows 
>> screen readers. Is there such an app?
>>
>> The second application I am hoping to find is a good weather app. I 
>> tried to the weather on the terminal and did not like it at all. So, 
>> I am hoping to find a better alternative that works on the gui.
>>
>> Cheers,
>>
>> Ibrahim
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

