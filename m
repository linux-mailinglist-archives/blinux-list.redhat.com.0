Return-Path: <blinux-list+bncBDX2LR4P5UIBBJXB3S5AMGQENHHA5EI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 400C79E9DC2
	for <lists+blinux-list@lfdr.de>; Mon,  9 Dec 2024 19:02:18 +0100 (CET)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6d8f4a0df93sf13304646d6.1
        for <lists+blinux-list@lfdr.de>; Mon, 09 Dec 2024 10:02:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1733767335; cv=pass;
        d=google.com; s=arc-20240605;
        b=R9e4+mBP4jx4IGTNn3dxN8szrMbktGqyP5l4NTtJZNZfQfeqgbjcWsy/jjr1j00JNb
         UjPVqxoVlUSzgUS8pmkP099QChTp0kmCUGx0xr/+9RQLp6BTFw2b1CRfJ6qZ4Z18Wr7y
         z2z5Ez8ZImMzr77ZtmaP3pOoo2YfxM23vTO7oZlFA5bhWUJWpLUet+SQJtQPBBsktHDN
         p0jtBZBcc7TKs3aR7LVGcVbO4Fe74Xz28ctGwTIVzd6SbS035Uf+qFIAvigwXKCIHUqE
         2ODYOSy1BPy5SKIQbagkhI9Wky3S9rud2zwCcVpaN2mPhhxPXDuMWEzwR8EcMlZkIaiN
         k2rw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to;
        bh=5K/KLD37NbTMMQwNA8a0HBSwZ3QuRuIATEW2KcrRj9c=;
        fh=u4tRnz7rVb5Tux+O7pH+1kzWrT2IYdt0pjecq+5/75U=;
        b=gUSATrSuOwRlGi78JU+NJ8t4Dl9vdJ6PjIbq20vhku476ZiZLUYe+raE3HihY8uRLg
         n4qRjEGiNNQurXe67GFZULj7VJisJbGRDQNGIcYsPiBeoCEWx3TMA3oNnz4xhlyfJoTp
         +pZ7inQgosAQX2iToMiImpruFYTYptAPdjS5Rr9D/+fERDe6ps+qxVWt5jUbEtywpOTv
         ronrb7wzznxtl/wKHQgcy5jmmQA7DiKd5zuGow/VVcHBhNF4/lZ0EX+krRSkiGo3uQbe
         2F1wNDC69zoaVjpdTvzZQgtEy9fhvFPXAjYpJasLJWZ1gxEwLNRu8jCXUtRTWxZ4ErL2
         SJEQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of geoff@quitelikely.com designates 173.255.224.66 as permitted sender) smtp.mailfrom=geoff@quitelikely.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733767335; x=1734372135;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:to:from:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5K/KLD37NbTMMQwNA8a0HBSwZ3QuRuIATEW2KcrRj9c=;
        b=U8R7HikU4A6JGUD4xUDqGfYcCiX0a9uwO1PZ1pRQ8zg9v/jYy1vmtPOJCj8xDggC+8
         KxDFkvXapG9hXiGdj6211az0nAhVPeaWbkadNd27b/tT5HMLEIHNti5q/mEqlkf/cV1i
         KtP+oCogVSC0vlo237pfIByl/Fjcyw6lEizH3qlkJjj5H3CFh3ATwtYL1XrCi6dJIM4w
         4aa+QbjY0xcBfc1biKchlvMG9sGHhOuspSI13MOlvfsJcEkIhsymNVJwkyTJXQxkRdBG
         DgEpdYggF6rXw8wd3jWVxlW3Gd7UIQvU2bFQYsm7E3pdegIpS3egyEr0WUvRTDOgyXg0
         st1w==
X-Forwarded-Encrypted: i=2; AJvYcCU0fwQ2rA1yKfxs35aW8wHsWv0U2tnyJkEObwTjNmH4MpsDEmKhLJ7YMMC52LbYfawIBC9Yig==@lfdr.de
X-Gm-Message-State: AOJu0YwOWil/Di77Usm2DTwG/ezBb+NdVOrPOvhfEfuodjJW0KEpB9Kf
	+JmTyx/0sF+X1ItCF7WK+cuQPNT8tw0s7WN+AZhPTlS/qZztDWm9bufUHfYQ0Jg=
X-Google-Smtp-Source: AGHT+IEnW9Jy4nkAmhYecoY+RNA1aiaUsPIBdLMaGXzPGMFTq+0w8t0nbL9btQKJfR6OT9OHKF45Rg==
X-Received: by 2002:ad4:5def:0:b0:6d8:9838:d3a9 with SMTP id 6a1803df08f44-6d91e389ac4mr20642296d6.26.1733767335430;
        Mon, 09 Dec 2024 10:02:15 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:501a:b0:6d9:b90:7629 with SMTP id
 6a1803df08f44-6d90b90820cls26292756d6.0.-pod-prod-04-us; Mon, 09 Dec 2024
 10:02:14 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVK/rHAEo2cXrfbihv7KmtO6xf2WCtiLDIsx9M1p8bDyOFjopzHx0xDe/+7z7rlpfe0HEkktsEmfYhjJg==@gapps.redhat.com
X-Received: by 2002:a05:6214:c4f:b0:6d4:c6d:17fe with SMTP id 6a1803df08f44-6d91e388c46mr24844846d6.25.1733767334171;
        Mon, 09 Dec 2024 10:02:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1733767334; cv=none;
        d=google.com; s=arc-20240605;
        b=HJ64GRe5A7qc0aifbI/SMCiGZOco8C2AXZYGIW3EBcBpV3PCNMEtDdWSkiuUL25heN
         aTLLWhgCHt1z20AQaw9Y3tUGpEU1Pz9cDPUDQsBDn0ATFUw+h7akdFLzlxtmGE3NlT39
         npQ/a8LUCZkKdAM3jdSU+GGBsQgFXGpwVRU8sP1agHFpg2XsKRXfvkld2llP9KAbbcFL
         AfZgUstPA6tPxyAgV9NH1AqueS1iZ24BP2LCt3LptfT2gtZZz8ajyg8qFIXw2prXM0pG
         NMh+9BdNPM2WSMXTqtAItaLhi4QXSYabcWdgpLTn1Tk3OgPSphXh0Y4sNTOptZy5Rr/W
         RrcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:to:from:date
         :delivered-to;
        bh=g9dAozS2HR+kPCsYDRIvtyMu3ES3UYtr3HtOyLPOYr0=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=MHOigza/Unq184UreHRGb7EWZe1lQ4Ubje8Ui/RFKJlFGHl0pjSmDVuO4VonYDBuib
         J57RDADo4gq11MAOMS7m+6RETPsUY12HrGY83GeFBpyqjgShVcOKCo2SP+1PWWvaiteN
         rQ5g2+/FvD9V1loVj/HYBG5FgNc29ny7KquWmEGM354qxhBwH/5qCUYHX6Wx+i95ptp5
         TpRKAS6SyQXhtent2fWxuhdaQ79y3/reTObJoRarbYDYj4Tir7gkhMOGFYQPocrxt+iv
         6Rd6pvPSZ7S+j8Gnm4oD80cJEfgUmAr3i4JPbXo27rwBbVeNeuna1LdoOWaLJAZlSC/l
         RnPw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of geoff@quitelikely.com designates 173.255.224.66 as permitted sender) smtp.mailfrom=geoff@quitelikely.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7b6d4ab0f13si352632685a.7.2024.12.09.10.02.13
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Dec 2024 10:02:13 -0800 (PST)
Received-SPF: pass (google.com: domain of geoff@quitelikely.com designates 173.255.224.66 as permitted sender) client-ip=173.255.224.66;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-605-0JLojF1DOwOpobs2hR4AYQ-1; Mon,
 09 Dec 2024 13:02:12 -0500
X-MC-Unique: 0JLojF1DOwOpobs2hR4AYQ-1
X-Mimecast-MFC-AGG-ID: 0JLojF1DOwOpobs2hR4AYQ
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D619119560BA
	for <blinux-list@gapps.redhat.com>; Mon,  9 Dec 2024 18:02:11 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id D057D195608A; Mon,  9 Dec 2024 18:02:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id CDBCC1956089
	for <blinux-list@redhat.com>; Mon,  9 Dec 2024 18:02:11 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5253A195608B
	for <blinux-list@redhat.com>; Mon,  9 Dec 2024 18:02:11 +0000 (UTC)
Received: from bullseyemail.carmickle.com (bullseyemail.carmickle.com
 [173.255.224.66]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-274-ECID57aXPJKY7BtfC0RRcg-1; Mon, 09 Dec 2024 13:02:08 -0500
X-MC-Unique: ECID57aXPJKY7BtfC0RRcg-1
X-Mimecast-MFC-AGG-ID: ECID57aXPJKY7BtfC0RRcg
Received: from [192.168.126.128] (unknown [94.131.166.228])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by bullseyemail.carmickle.com (Postfix) with ESMTPSA id 066AF9E043E6
	for <blinux-list@redhat.com>; Mon,  9 Dec 2024 17:53:37 +0000 (UTC)
Date: Mon, 9 Dec 2024 19:53:36 +0200 (IST)
From: Geoff Shang <geoff@QuiteLikely.com>
To: blinux-list@redhat.com
Subject: Re: My Sound-Cards Are out of Order Again
In-Reply-To: <20241209.050612.901.27@[0.0.0.0]>
Message-ID: <40ebd47c-4d86-9d2b-7888-eb0ed70adafb@QuiteLikely.com>
References: <b5d047ff-5695-bbaa-d3c3-41ca7fd56396@hubert-humphrey.com> <20241209.040341.694.24@[0.0.0.0]> <41ed14fc-97e7-bfd8-b13e-ad14d429cc1a@hubert-humphrey.com> <20241209.043800.647.26@[0.0.0.0]> <20ccc5fc-d10b-edab-7aa9-9ef3365491bc@hubert-humphrey.com>
 <20241209.050612.901.27@[0.0.0.0]>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: jAx_YSEIR5n5tig7cYdmk-1URscgqL5apxItmBHf5yc_1733767328
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: Y8HQ8YJAAtzhbUXOM9nim5p9OK9eKWebj6H_51mz68Y_1733767331
X-Mimecast-Originator: quitelikely.com
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: geoff@quitelikely.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of geoff@quitelikely.com designates 173.255.224.66 as permitted
 sender) smtp.mailfrom=geoff@quitelikely.com
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

Hello,

The card number is defined by the index parameter to the ALSA module.

So if you want to change it on the fly, you could remove the particular 
ALSA module and reload it with the appropriate value for index.

For example:

modprobe snd_ens1371 index=2

To have them come up in the right order, you would edit whatever mechanism 
loads them and add the appropriate index value.

I'm running Debian Bookworm (version 12) and I can't figure out exactly 
how my sound driver is being loaded.

Apologies if any of the above is not 100% correct, it's awhile since I had 
a linux box with more than a single sound card.  I used to have one with 
three that all played very nicely together.

HTH,
Geoff.


On Sun, 8 Dec 2024, 'Rob Hudson' via blinux-list@redhat.com wrote:

> Not that I'm aware of. You can make similar aliases in /etc/asound.conf or ~/.asoundrc, but alsa's syntax confuses me lol. Someone with better alsa knowledge will have to chime in, here.
>
> ----- Original Message -----
> From: Chime Hart <chime@hubert-humphrey.com>
> To: Rob Hudson <rob_hudson_3182@gmx.com>
> Cc: blinux-list@redhat.com
> Date: Sun, 8 Dec 2024 20:56:31 -0800 (PST)
> Subject: Re: My Sound-Cards Are out of Order Again
>
>> Hi Rob: I don't have either of those config files, but I sent your suggestions
>> on2my Linux expert. So is their no way of altering the defalt on the fly?
>> Thanks in advance
>> Chime
>>
>> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
>>
>>
>
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
>
>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

