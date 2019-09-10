Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id EB776AE1B0
	for <lists+blinux-list@lfdr.de>; Tue, 10 Sep 2019 02:32:45 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id A145C30A00C4;
	Tue, 10 Sep 2019 00:32:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F270B60BF3;
	Tue, 10 Sep 2019 00:32:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A99071802217;
	Tue, 10 Sep 2019 00:32:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
	[10.5.11.14])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x8A0WS2W009684 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 9 Sep 2019 20:32:28 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 8B9A15D9DC; Tue, 10 Sep 2019 00:32:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx22.extmail.prod.ext.phx2.redhat.com
	[10.5.110.63])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 85E085D9D6
	for <blinux-list@redhat.com>; Tue, 10 Sep 2019 00:32:26 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
	[209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 1E76318CB906
	for <blinux-list@redhat.com>; Tue, 10 Sep 2019 00:32:25 +0000 (UTC)
Received: by mail-wr1-f50.google.com with SMTP id y19so16578982wrd.3
	for <blinux-list@redhat.com>; Mon, 09 Sep 2019 17:32:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=YoGAiTwBvCQTJHvTU4d2auLuPxZFQDNhbxF7jH+C18w=;
	b=N3XlKk/MAPCnycnIv4YhkzSqZf72l6Dxhjgqy3muT/yFwkH9ozlDBy3T7vW0c+o4Dk
	9DRw5ZUKonK6TA4aTrK2DhIP8u0IbEnulAqGGcFQFOfPOh67tq2jfNNNsS8LQQ1Dv+60
	sk8jHBIeRnxWIVIwlT7nk+RZTnzlFgWGIPVlCFhSzlZulbzqUhKk28gzUyCjGK7nZy1m
	gyfevYUvKxLW+vazLGsWIim2pnxXSaWwePoYx0Uj+6ywd0nOljY+IStKrCIzdMOvlraA
	HM4dp2kT+8ZJx2UsEaH6lb4h0GuwVDsTlytTkY/SujLkX76VX0N1aa1s2mV5Q0V782lN
	gijA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=YoGAiTwBvCQTJHvTU4d2auLuPxZFQDNhbxF7jH+C18w=;
	b=cj8//a/3j2m56xRQUc3MLZNGhPHinRfZdkOR49uCw5YDitFT4phKoajpZJk7GDyAm0
	0a4J9vuOPd6W6eUr6epWME9iVeChmd4Iy1+VypBaiIq+FKjyAgfSHDNsiFtNp8cueLCd
	5Huw4dRohEA9oCmJ9C1NlTG1d0nK2oA/cQC6ExQDLCUvsWJaXtWkq3958hS5jG+i9jZR
	G/1eIUxZL35WuJM5vqrDg4OfMJlNmOZ4L6D7Ree8dG7HN4IFHVjSm+B5TfHITfibtxph
	HZD/czVLup8Dd5/jmKe6fOBRzqxDGDy1OC2UMvMR7dFkaALRtdihMXPhJGDI+mzkkth4
	cxYA==
X-Gm-Message-State: APjAAAV3GrL209phlFG6pPtLjqCN/CJ/C50cPvLjukwxrOIX0vSKeyB6
	vNbhIz03RDz5V/UKvF5MYwraW7w5jpI=
X-Google-Smtp-Source: APXvYqwqQIdQmbRyijZ75BsL+KhrCDEYgJ9v8igBSHohTo0J+jNE+UXHGfmaZ029vQq/cmgmjZpBRg==
X-Received: by 2002:adf:ebd0:: with SMTP id v16mr13549670wrn.352.1568075543619;
	Mon, 09 Sep 2019 17:32:23 -0700 (PDT)
Received: from [192.168.1.3] ([84.64.173.145])
	by smtp.gmail.com with ESMTPSA id
	d9sm25465402wrc.44.2019.09.09.17.32.22 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 09 Sep 2019 17:32:23 -0700 (PDT)
Subject: Re: Comunicating from your Linux machine?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <e2cd82fc-02d9-a55a-abe9-6141dba37f8e@gmail.com>
	<53EDACF6-CD22-4D52-A926-00A9B085D663@gmail.com>
	<57970813-70fc-369a-3bcc-ad35defe78c9@gmail.com>
	<alpine.NEB.2.21.1909091352500.21956@panix1.panix.com>
Message-ID: <a89b4f01-1d15-e311-8db8-6a4d2461a6cb@gmail.com>
Date: Tue, 10 Sep 2019 01:32:22 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
	Thunderbird/68.0
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.21.1909091352500.21956@panix1.panix.com>
Content-Language: en-US
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
	(mx1.redhat.com [10.5.110.63]);
	Tue, 10 Sep 2019 00:32:25 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.63]);
	Tue, 10 Sep 2019 00:32:25 +0000 (UTC) for IP:'209.85.221.50'
	DOMAIN:'mail-wr1-f50.google.com' HELO:'mail-wr1-f50.google.com'
	FROM:'khalfang1366@gmail.com' RCPT:''
X-RedHat-Spam-Score: 0.125  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_ENVFROM_END_DIGIT, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_MSPIKE_H2, SPF_HELO_NONE,
	SPF_PASS) 209.85.221.50 mail-wr1-f50.google.com 209.85.221.50
	mail-wr1-f50.google.com <khalfang1366@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.63
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.43]); Tue, 10 Sep 2019 00:32:44 +0000 (UTC)

I'll point out Pidgin with the skype web plugin. That is accessible and 
does text chat. There's also a FB and Google Hangouts plugin, too.

Or you can use web skype in Chrome or FF with a useragent switcher, 
that's also useable. There's VOIP sites too that work just fine on Linux 
and a browser like Firefox too

On 09/09/2019 18:54, Linux for blind general discussion wrote:
> Mumble has a command line client called barnard and you'd have to have
> git and go installed on the machine to download and build it unless your
> distro already has a pre-built package available.
>
> On Mon, 9 Sep 2019, Linux for blind general discussion wrote:
>
>> Date: Mon, 9 Sep 2019 13:49:34
>> From: Linux for blind general discussion <blinux-list@redhat.com>
>> To: Linux for blind general discussion <blinux-list@redhat.com>
>> Subject: Re: Comunicating from your Linux machine?
>>
>> Oh I almost forgot ... you can try Mumble, though it's designed more for chat
>> room style communication as opposed to one-to-one communication. There is also
>> Linphone, but I seem to have better luck with it on Android than on Linux for
>> some time now, though I haven't tried it recently. Linphone is a SIP
>> application, so it is good for talking as if you're talking on a phone, either
>> one-to-one or via your favorite conference bridge, and there are many of those
>> across the internet. I used to use another SIP phone called I believe it was
>> SFLPhone, but I don't know how active that project is now.
>>
>> ~Kyle
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://www.redhat.com/mailman/listinfo/blinux-list
>>
>>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
