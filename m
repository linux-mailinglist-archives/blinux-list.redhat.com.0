Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id BD1F43DD2FE
	for <lists+blinux-list@lfdr.de>; Mon,  2 Aug 2021 11:32:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627896764;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=LAcWjjnt4awhMeDrR0z0FgmtV2Q5xiNc4UZhwDowWOM=;
	b=MrdNgud3p9lzRYlcUW5D5o26VakKhOdkhf/5b6lmDL+RC70zF0Rs+IOg/KfidttO+sYIJ5
	S+Bw9mWNj82VeB9Wn4dHb10pcYrzAF+p2YvnJRrkHsTewV/+FeLZ4G2gi8rL1Hs3wO9HOM
	QPI6eM5hRY5xK+NoyQG1SbhAZXNlkwg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-269-YVsXwJmPO-6YdpzvRoFqfw-1; Mon, 02 Aug 2021 05:32:43 -0400
X-MC-Unique: YVsXwJmPO-6YdpzvRoFqfw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1D43C107ACF5;
	Mon,  2 Aug 2021 09:32:39 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9B1C519C44;
	Mon,  2 Aug 2021 09:32:35 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8F468180BAB0;
	Mon,  2 Aug 2021 09:32:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1729WPR8002681 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 2 Aug 2021 05:32:25 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 02D0B216868F; Mon,  2 Aug 2021 09:32:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F2486216868C
	for <blinux-list@redhat.com>; Mon,  2 Aug 2021 09:32:21 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6EA708D139B
	for <blinux-list@redhat.com>; Mon,  2 Aug 2021 09:32:21 +0000 (UTC)
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com
	[209.85.208.53]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-149-HbiZdVw-Peug9DUQEGClVQ-1; Mon, 02 Aug 2021 05:32:18 -0400
X-MC-Unique: HbiZdVw-Peug9DUQEGClVQ-1
Received: by mail-ed1-f53.google.com with SMTP id n2so23530398eda.10
	for <blinux-list@redhat.com>; Mon, 02 Aug 2021 02:32:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=xf9L/+Yd90894SpLgOy/DVCdafp7j+FMklLu5GJ/W4I=;
	b=sllMdlZqBX7eAa5mMpJOUae4W0ajRh9iOUKmbHcBBNpuw+57Vb2NZU0LX5Ha8sabs3
	z/yHVZq8u5PPjPWuQkGovkA6OL2ZloS+sm2geIowIH9t2uaoBOvUfv9No269iTZeSSQZ
	5KQwPdH7noDeKQBeViCVNELVafsFzVlyZX0FjOgHvlagovALzzShRZqKntMqC5IFO/fO
	YM9pr5PerwqgGo/khLL4TkWQJu7jeMM1EEv5HI2nDYZQlByKoJrVxtjDsQrJVYOmqquB
	fWGCZisFpiyJsSrapE0rm4qivXgn3NPeXgNi1tQYYibFNkoY0dzuT5bCbLZtc8X/JraR
	7/rQ==
X-Gm-Message-State: AOAM531VyvYJfm3k9oLSlDYxACQ0O05GzDl8eKV3xQKvJXRM9lItONNk
	yhMAilJMP38j3Rem35XMiuzM38oneww=
X-Google-Smtp-Source: ABdhPJxcTiA7AeySQRJ2T6qNHJiRSbszRDHx/xF2eW7Rsvf77bHGro2Jly9UZiTA7o4mCIKhwMcWpA==
X-Received: by 2002:a05:6402:40d4:: with SMTP id
	z20mr11176413edb.89.1627896737269; 
	Mon, 02 Aug 2021 02:32:17 -0700 (PDT)
Received: from darkstar.example.slint ([197.185.110.57])
	by smtp.gmail.com with ESMTPSA id ck3sm266686edb.80.2021.08.02.02.32.15
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 02 Aug 2021 02:32:16 -0700 (PDT)
Subject: Re: Installing the Orolux IBMTTS version of Eloquence on Slint?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <e1e89997-d831-ff6d-0b95-3a92f611e099@gmail.com>
	<87zgu0xop6.fsf@brainpower.wer>
Message-ID: <0a9f8d88-9149-cb20-a3bb-82cf860cbee0@gmail.com>
Date: Mon, 2 Aug 2021 11:32:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <87zgu0xop6.fsf@brainpower.wer>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi,


It's telling me, "your version of speachdispatcher has not been 
recognized" why it's doing that, I have no idea.


Warm regards,

Brandt Steenkamp

Sent using Thunderbird from Slint

On 8/2/21 9:58 AM, Linux for blind general discussion wrote:
> Hi,
>
> I successfully installed Voxin on my Slint machine. At what point are
> you having  problems?
>
> What I did was to
> 1. Tar xxfzv voxin-3.0.tar.gz
> 2. Change to the folder with the unzipped files with cd voxin-3.0/
> 3. Change to run as root with su and press enter.
> 4. As root, run the install script, ./instll.sh and you are done.
>
> Good luck,
>
>
>
>
> Linux for blind general discussion <blinux-list@redhat.com> writes:
>   
>> Hi all,
>>
>>
>> Ok, this one has been driving me crazy. I have successfully installed
>> eloquence on pure Arch, Manjaro, Fedora, Debian, Ubuntu and Mint. I just
>> cannot get the damn thing to install on my Slint system.
>>
>>
>> If anyone can help, I would be really grateful.
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

