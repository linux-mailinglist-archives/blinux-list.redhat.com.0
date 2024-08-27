Return-Path: <blinux-list+bncBCPN3MHH6QPBB74WW63AMGQEGY3C6GI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yb1-f199.google.com (mail-yb1-f199.google.com [209.85.219.199])
	by mail.lfdr.de (Postfix) with ESMTPS id A4944960AFE
	for <lists+blinux-list@lfdr.de>; Tue, 27 Aug 2024 14:50:09 +0200 (CEST)
Received: by mail-yb1-f199.google.com with SMTP id 3f1490d57ef6-e13e682bee1sf10016090276.2
        for <lists+blinux-list@lfdr.de>; Tue, 27 Aug 2024 05:50:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1724763008; cv=pass;
        d=google.com; s=arc-20160816;
        b=rAXcqlCOqpJ0URQrR2zrN0nhD7SCytgmkCxs/kRazBPpFX7bqAKrzHMQHI+J4qVQeb
         K7KH7gaiTDjD3MuPPxPBsOb7NHyROrL2suMzWumoKTWOPRz0deC8eYz/ZjqYJPbAIyEm
         3e8bQXqvmsvydP3+R8xeU/iv3ZMcf7MlfBavjpH8s9/Mm7GLQZy06sRG3sZ6/DnxqlQ2
         IZh7AuJfcjy4tZjmHWN9ZkE5IaCXG6ZTcW5n2G857PX/cuMgTHsLPgII8RuauXBuTzCS
         vb6AZORuBwDzeKQnx+7v1kt57t2zhEbc/95R9LTE4MVYWfuT4iQQHQaJARFjLCyjYULk
         VLgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=2z4ublBL7GxLpWAFYCxiaociICN5VIh382fzxnnpJ2c=;
        fh=mOCnWsvLeuJUL5AA6zBMk/+ZLSFpAOGrN+qYNSspovY=;
        b=sewiDuOoLakigpWM0Jelp91MSU3AaKCJW0wA4B3DhlhQZG8PhyoEQCI0PPSHy7NN8s
         7Y/gu9DGeRs3cJX0Zdua0459HhLmcC6zXuvKJdnU5fq3AlgfVezEcogIVSZdRGQlRLG1
         xXoEwG8o+dvGg2/bp+FnChF4frCa9XmJjLlOWDTVwjEmV3Kh/MujTv2SnloK/kCXusY6
         T/3aGTgafxoLK64z81Xhh/JxdSKwhK+J//ASejwaMONGfrw/5qqrycT/rFNYgUlZDXt+
         hOWWbPVmrXTHConVcBURK7ofpgw1UYixKHfrV/Jkwati45XiZ5idHr9BPfc5W+nkxb7c
         s8Hg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of destructatron2018@gmail.com designates 209.85.218.48 as permitted sender) smtp.mailfrom=destructatron2018@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724763008; x=1725367808;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:from:references:to:subject:user-agent
         :mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2z4ublBL7GxLpWAFYCxiaociICN5VIh382fzxnnpJ2c=;
        b=xHtHjMWQh54mjJhKMB1kvCBgRxslmlgPf3IfO835muP52B97NEWp6vf3wiZTGEC4qJ
         O4vlXtRA955eXXQjmbdU4G+jva3lZHOrMug9JQxFCi8FXnkYwbquF3bhkKSJrS9xwZNB
         Snu50C7QCi/xmn2yi/FAMKhxVaThnz/giIFdgmRf7bIArDL1W1WDq+U5uQRVZYtGfIQ7
         g7F/w88504NNgJ2d1+fAb71GDePTbsWu0MhHmm84GmSaT7cyuDVYTymARgcfpZKq2AyI
         FuXR5/jrEQYDvgFHBk2DksFelNyNE+QkfzOh1IQGGYQKrwQrbAnqMuZPkxqouafokEY5
         7WIQ==
X-Forwarded-Encrypted: i=2; AJvYcCWKEyNipg0Onh4QgUKMDBD4QXKIm1aRskxHR5VGAzPLZkKpDOUZZ4A41AWBXl1duea4djEgnQ==@lfdr.de
X-Gm-Message-State: AOJu0Yz9NzmONNzOWSewy7A/LakLj7mWohc141WzYm1FifyLQ0ef5/lZ
	L8gNOH1+8bjxiDk7gFVs9OtkA0k4RWj27vYyAiLoQqlHs3g8VpobYl/1dFlnsr8=
X-Google-Smtp-Source: AGHT+IF+iWFHb+8+vVvfWwD/fEgvTlbzfeoLRiWyU/HqN2v4pcDjd+eZCTRaxuHURPUT+ixTul2RmQ==
X-Received: by 2002:a05:6902:2789:b0:e0e:aeea:c93d with SMTP id 3f1490d57ef6-e1a2a97a8a3mr2462829276.38.1724763008103;
        Tue, 27 Aug 2024 05:50:08 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6902:1004:b0:e0b:be54:a76d with SMTP id
 3f1490d57ef6-e178b85cef7ls4150241276.0.-pod-prod-09-us; Tue, 27 Aug 2024
 05:50:07 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVPFvnmCkXlEN+f8L7RbgGWmSfvtl+1Cyt984FtdS0kRYElTfo6k+wfwzkX0BBOBUbZvNSOH4ovRjt95g==@gapps.redhat.com
X-Received: by 2002:a05:690c:f82:b0:61b:342e:91ae with SMTP id 00721157ae682-6cfbb50a5a7mr30195437b3.36.1724763007160;
        Tue, 27 Aug 2024 05:50:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1724763007; cv=none;
        d=google.com; s=arc-20160816;
        b=HbbWv9PIa12yGERwYtKwEEob+ndlQ2+Zw89DacspjHJqj5Fspq8NfDGtl7yW+dFBZT
         1huPp4iRK+LLFZUho08JyqgVWAGmcyBPB/h0ihF2ymz6d+REBclTAWqESRp4Ocjz548u
         4/eIeWNZW8FFkKlq68HjsnhywUkdyGZuG8om0E46LeeHWZ8PFn7clQQjCpphMy0kXIBz
         oLPrT8uxTmHRmBUY/FUhw8uwE/x7rvv5k4nk/x/bPg0E/DL1eYrRwndcM9biopHyd+K5
         GATkZi2rux7+dBmHb0FwlgNsHlNOl3eEQU9w3g59bsMiLTAun6QEdjEv1hbYi/IE+oly
         FGjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=Bo2bVeWQrhmxnoZQ8/5fbfRuHDk14vkKP5/B8Gu2BQo=;
        fh=MV7O71fFTMQ0v3T8I2Y0Wz145Wg+mRl5w60AONCM9f8=;
        b=BoXKcs1mtdfxXHzUnZPqOe+R3mdey5fiBLcWt7k/e2TJvGRgfs2LeA9tU1nR4OAPon
         FJAz8OCbv8yCE0dPzvZsfzK7+onemHiK42Y198uLXO5+tFUxGknvoeqtqzaqnlx8b77n
         SmTwg6E6MMtSd6VKEFJAxoz4PCikvyCSWwDbE+Yb1dU4LodsOHWoUvI+ahodDkaLKDRS
         kiNAhkXzJbLiHXsETm3avYXzjxas9fOEXdZ8hTnhDm6mu6A+46W3YVpPM0eXv5vCn7tU
         GCOdijNfH3v4Ie1SPoa9z78jFHEo8dr8a1wTIPnIisRjQNvCPnPj2AgVG3eOhcDo/PQe
         BhVA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of destructatron2018@gmail.com designates 209.85.218.48 as permitted sender) smtp.mailfrom=destructatron2018@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id 6a1803df08f44-6c162d560besi129648896d6.133.2024.08.27.05.50.07
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Aug 2024 05:50:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of destructatron2018@gmail.com designates 209.85.218.48 as permitted sender) client-ip=209.85.218.48;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-478-Ildi-iK_Mjqe78fIUOYrZQ-1; Tue,
 27 Aug 2024 08:50:05 -0400
X-MC-Unique: Ildi-iK_Mjqe78fIUOYrZQ-1
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 28BAB1954B15
	for <blinux-list@gapps.redhat.com>; Tue, 27 Aug 2024 12:50:05 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 234C319560A3; Tue, 27 Aug 2024 12:50:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 20BBF1956053
	for <blinux-list@redhat.com>; Tue, 27 Aug 2024 12:50:04 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A75761955F3E
	for <blinux-list@redhat.com>; Tue, 27 Aug 2024 12:50:04 +0000 (UTC)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com
 [209.85.218.48]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-424-E-k8tFdDOxmRIkrLM2c_ug-1; Tue, 27 Aug 2024 08:50:02 -0400
X-MC-Unique: E-k8tFdDOxmRIkrLM2c_ug-1
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a7a9cf7d3f3so697426166b.1
        for <blinux-list@redhat.com>; Tue, 27 Aug 2024 05:50:01 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCX4OMcMRg4N6nvIM97uQs0RFFyaXJm5/8r4eGSVPWLmVAqRWhaLNYQNFhv9o8DT7q8Cz10eN5Z3C99e7g==@redhat.com
X-Received: by 2002:a17:907:3d92:b0:a86:812a:d2b6 with SMTP id a640c23a62f3a-a86a52b917emr1036263166b.23.1724763000524;
        Tue, 27 Aug 2024 05:50:00 -0700 (PDT)
Received: from [192.168.1.72] (21.45.208.46.dyn.plus.net. [46.208.45.21])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a86e5488367sm107371066b.40.2024.08.27.05.49.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Aug 2024 05:49:59 -0700 (PDT)
Message-ID: <8f39b1ff-64ee-4d51-bc0a-ee991f3b14db@gmail.com>
Date: Tue, 27 Aug 2024 13:49:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Grants for developing accessible software
To: Kyle <kyle@gmx.it>, blinux-list@redhat.com
References: <20240826195903.wwlxwqjipjjxnc7k@sprite>
 <b7d0dc90-b882-46c4-b089-fe861f0175a7@gmx.it>
From: Harley Richardson <destructatron2018@gmail.com>
In-Reply-To: <b7d0dc90-b882-46c4-b089-fe861f0175a7@gmx.it>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: destructatron2018@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of destructatron2018@gmail.com designates 209.85.218.48 as permitted
 sender) smtp.mailfrom=destructatron2018@gmail.com
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

Last time I used audacity on Linux which was around 6 or more months 
ago, the track list was completely inaccessible, even if you named them 
Orca would just be silent. Has this been fixed, or is there a setting I 
don't know about that fixes this? The idea of TUI software is nice, but 
it has to be written a certain way for Orca and other screen readers to 
correctly determine where focus is and announce state changes. Highlight 
tracking fixes some things, but not all.

Harley

On 27/08/2024 13:33, 'Kyle' via blinux-list@redhat.com wrote:
> Well, I myself have used Audacity for about 15 years and it's Tenacity
> fork for about a year. I use nothing but Linux, and I find these apps to
> be very much accessible using Orca. In fact, although I did use it on XP
> at one point very long ago, I found the Linux version worked better for
> me using the same USB hardware I had at the time. My recordings even
> came out better using Linux, whereas on XP I got a terrible loud hiss.
> This is not at all related to accessibility though. In any case, I don't
> find Audacity or its family tree lacking in accessibility. Still, I am
> glad to see other options available in this space, so definitely keep up
> the great work you're doing. Sadly I am unaware of what if any grants
> may be available, but if you accept donations, I'm sure plenty of people
> will be interested in contributing to Nama financially. Volunteers can
> probably help with coding as well. All the best.
>
> ~Kyle
>
> To unsubscribe from this group and stop receiving emails from it, send 
> an email to blinux-list+unsubscribe@redhat.com.
>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

