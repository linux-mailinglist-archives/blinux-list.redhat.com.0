Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 31C817285A8
	for <lists+blinux-list@lfdr.de>; Thu,  8 Jun 2023 18:45:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1686242753;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=EEU4f+h2yZt4f5Cy2+pnZBMpq7LsC4vrQCIxbCk4izo=;
	b=iC1jrmLygPAanD9jLApRY3A9qt2aM9kc0tyDe7MBlTOrOms1A1SpLcqNWmB7BBQWEg9CDZ
	SxpiUrkJVyEd/mvwzxVIbpLbjwthedNJs337C7fTZexLPEDOTyQvz5/9keSvO/Om1lg2zD
	UHArRRb6/k1XTfKnt04IorJWcGw35Ac=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-106-B0oMnkAUPYKcHk5vm4ychQ-1; Thu, 08 Jun 2023 12:45:49 -0400
X-MC-Unique: B0oMnkAUPYKcHk5vm4ychQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BC9C0866DEF;
	Thu,  8 Jun 2023 16:45:34 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 2183840CF8F7;
	Thu,  8 Jun 2023 16:45:32 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 50CBF19451C4;
	Thu,  8 Jun 2023 16:45:31 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 8 Jun 2023 17:45:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: raising the volume
To: blinux-list@redhat.com
References: <mailman.965.1686145289.910460.blinux-list@redhat.com>
 <mailman.1737.1686223393.910457.blinux-list@redhat.com>
 <mailman.1812.1686223711.910456.blinux-list@redhat.com>
 <mailman.1603.1686230998.910463.blinux-list@redhat.com>
 <mailman.1684.1686237060.910460.blinux-list@redhat.com>
 <mailman.1689.1686237182.910455.blinux-list@redhat.com>
In-Reply-To: <mailman.1689.1686237182.910455.blinux-list@redhat.com>
Message-ID: <mailman.1706.1686242730.910455.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

You can install fenrir, but I run into an issue where Alsa goes pipewire 
not running, so I won't give you any sound. A workaround is to not have 
fenrir start automatically, then log into the root user and type 
fenrir-daemon and do your thing. It probably has something to do with 
wireplumber not starting before a user logs in. I like pipewire but at 
the same time this pipewire-alsa thing breaks TTY screen readers and 
sound in a TTY in general.

On 08/06/2023 16:12, Linux for blind general discussion wrote:
> Could fenrir be installed on fedora?
>
>> On Jun 8, 2023, at 10:10, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>>
>>
>> On 8/6/23 09:29, Linux for blind general discussion wrote:
>>> I can use the console.
>>> I use mate terminal since the console would not talk, as far as I know.
>> This suggests you aren't aware of Fenrir or Speakup, both of which are screen readers for the Linux console.
>>
>> I would generally recommend pactl to adjust the system volume in a graphical environment. Also, the media keys for adjusting volume on my laptop are fully supported. Yours may be as well, if your system has them. (On my Lenovo machine, FN-F2 and FN-F3 decrease and increase the audio volume, respectivey.)
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

