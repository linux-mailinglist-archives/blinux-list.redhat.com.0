Return-Path: <blinux-list+bncBCVPTHE7K4IIZZ6NXIDBUBCVPJSH2@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B8E79E7B3D
	for <lists+blinux-list@lfdr.de>; Fri,  6 Dec 2024 22:58:38 +0100 (CET)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6d88d56beb7sf30227966d6.3
        for <lists+blinux-list@lfdr.de>; Fri, 06 Dec 2024 13:58:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1733522317; cv=pass;
        d=google.com; s=arc-20240605;
        b=HuFsupx8kREpYCDWoUXt+/6fAFR4oKmNJEzDgdg39Ur/ojt2QeKotN+rU7exV6X7ce
         d44sBygwA9DE7mOq2w2AZoxPM3Y4ZqCth6sM6lZcP2EMyTHPMyDW2wfd7Nn3MIzKPKy0
         aqqwaRAmHLIWPeG/lphcPRrGX0uKsTRTyS2BXYr3UfK2t6i0gMlWNFfkfb79RvZRHMOI
         FRrPRGW6YF7vFadGqN8Zl0r82GA6rrzYc84tEsBGjzMl2LFhCbPPrO8RTGp/JbnRFBZ6
         XVzUdgv3qN9xZT9gFEvIDrxG5qBF6XqVJHrXFdJGrpHpkkchpkfO6a+2SH91Zp787N57
         zOig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=osGQCcWT2ALp0VAxFKTLY9Y6blhHd7JZIq7m5JjTrlc=;
        fh=eM5znsHuFQF/zzimR1I0zuryk1ThVQAwGGu5z4VdNB8=;
        b=YbuVH8p3vlHYXGX8QI9m6iO0G/TugI80VVPy3q4Wvgk8RuzgRMYzasJGZE2Ls3RADX
         7LYQPt/krPZor6VLmttRlsUlziYmjTVQ9fFf69maj2FteTrFC1TI5x6cFng8On5iB07P
         E3gJVYE9mij1TzTDJue9Z5FNLzKBnv7lVDyCPKfEQsZ9KZWTNVbzJR/xREuU1wECyxdO
         X2pJt694VN+YS9kLCDWElx730OtuEN21+XtH6wc7MeK8LojvJNzroDWFLYZCQhrhPZGE
         EfKCkhYWMfBvKbe+nbUNsX+2o1Fm6xtwtIVooFtEsQqXMlI4atb//ZmxKQoBPvojm3b8
         I22Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733522317; x=1734127117;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=osGQCcWT2ALp0VAxFKTLY9Y6blhHd7JZIq7m5JjTrlc=;
        b=AnyhVyVuEoTDKapEfRhLZnu01kUzTqaVcVFH7EsTWPZ3Wg5GuSGcwrqCvxiXfiXjRH
         1mcTEO7LNvfy3i5FTgaa/qK/c7KvwJqiUt6KtC6+WxXBOIoRjpf9pLRVymV7Bu4zJC2E
         JY8jxCf9jR/8KcFEw56OkvE4L4PAsOSyTP5CcP/xqGU7obQNRcHpmTG72cdHBZbvFzYU
         LKSQ+PXY8Fqstpz8s5kkaCDiotixe4tVaC1vfnBwfu3YUQ5o1/A+oF7jJUFgTT7zUisl
         Cg/pdVYaDniLFT9I3tqThcV1qWvsrTpRhLGdEfRUUb8m+RZA2aGsTSY8Vi2yiMipOP3p
         w1hw==
X-Forwarded-Encrypted: i=2; AJvYcCWo/ff5tlxV1C9CUiIPXqGfj+CAv9CSRCSUyOf5LcOVvjtDdAtUSTBsA1g/I+CJA6TEEBCkYg==@lfdr.de
X-Gm-Message-State: AOJu0YztvHtRsxJrfRR5JkxJ9a32GJ5VhWlWGAqV4yJRxUBGoJOGZo9b
	vE7vz5q1zZ4P6V/l2EhaFhAFRNFhJ/HC50WvvM458DXa5fg7vHHvC0A6PYuEGmE=
X-Google-Smtp-Source: AGHT+IFB4diN+HDtprMDMChF3CbgixbB5ZvRwmP38Pg/Gde6ONosqOcHph+3F8hUDuZI01D1xbdsYQ==
X-Received: by 2002:ad4:4eaf:0:b0:6d4:586:6285 with SMTP id 6a1803df08f44-6d8e7114497mr65221046d6.11.1733522317365;
        Fri, 06 Dec 2024 13:58:37 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:5ed6:b0:6d8:f050:cdf8 with SMTP id
 6a1803df08f44-6d8f050d07dls8313516d6.1.-pod-prod-08-us; Fri, 06 Dec 2024
 13:58:36 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXF3/hjHlAyNmIAQCs6hveBu85KCouHTWtF8dfEq6zSzg+ZkOhiV2t9VqS6O9MHAHTRpCKdoB05q6ipFA==@gapps.redhat.com
X-Received: by 2002:a05:6214:19c3:b0:6d8:8a60:ef2c with SMTP id 6a1803df08f44-6d8e70d6726mr63406996d6.2.1733522316447;
        Fri, 06 Dec 2024 13:58:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1733522316; cv=none;
        d=google.com; s=arc-20240605;
        b=kQCFMNs6bQZP7IwEGiyDt5z60bf3D6LndL29DX/PA07fPyo7uUGShrZIz+oE93bAhU
         gbobDwZyNvU5cxXdzMTl41qqUwEtdvRVuijuO/+iYbPl6ERwhuCkK0BQEs2lV+NYA24l
         hAkEZyL4WdnQe09JXDEd+laXTMiBLjYBbrzt4H0UgAjOHkhHIq4ycj26fxJBspUzh2a7
         lbe5N39Sw444AZ+NSTPEVrxDRasU2pdMWKhI3HpnEpvnPLMW6JNb1fcy2NmtTm4qP/gm
         vkwoTIndz3qv1PwRvk0QDA1KQEXzG6JYEFKlhfrc7jEbfLa5aE+0UzAVovK5ht4OtFFk
         dmMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=osGQCcWT2ALp0VAxFKTLY9Y6blhHd7JZIq7m5JjTrlc=;
        fh=OWfdHEj+Bj8cX8FCgAkA2e9mxDm/K1f35VhoRXKY+MY=;
        b=fHcPWAWAABx2CWahV+jj1yN/UlyPWcorpNNBeTftRLM5Y5v5wmX51tXQGxf/Lw7LoC
         tJipX9ioytPjEZaZmh55GSkxOXhYyYx5s615fVeDsFpFgo1wjLDdqRj1zNImcsDMaN+Y
         rgmzBjroVrQigCtf4jrBIR7b8hSUUCn+T19w1QNgIQoEEPCOl1V9ONa0UL5uh0i7IFtI
         ccZgmbotp6RZUO0BIodVVSldnL9HxL9zOxnkO/eXAar+BAY24YuBeIbb/YWjcQ40jfxK
         9BHczEj4O/X1olW39qIcFI5WEK5W9OD8LnOQlsFQtYrAiYI4hDagaKy1gB3VU1JogTs0
         cwTg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id 6a1803df08f44-6d8da680083si51205136d6.31.2024.12.06.13.58.36
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Dec 2024 13:58:36 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-460-kxy6TdGrMPGMMUOa5bFJ2Q-1; Fri,
 06 Dec 2024 16:58:35 -0500
X-MC-Unique: kxy6TdGrMPGMMUOa5bFJ2Q-1
X-Mimecast-MFC-AGG-ID: kxy6TdGrMPGMMUOa5bFJ2Q
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 33F1019560A2
	for <blinux-list@gapps.redhat.com>; Fri,  6 Dec 2024 21:58:34 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 2DD4B19560A0; Fri,  6 Dec 2024 21:58:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2B4A51956095
	for <blinux-list@redhat.com>; Fri,  6 Dec 2024 21:58:33 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 9F29D1956076
	for <blinux-list@redhat.com>; Fri,  6 Dec 2024 21:58:33 +0000 (UTC)
Received: from atlas.bondproducts.com (atlas.bondproducts.com [23.24.6.165])
 by relay.mimecast.com with ESMTP id us-mta-135-z57rQjVfOzyfXor5e4idIw-1;
 Fri, 06 Dec 2024 16:58:31 -0500
X-MC-Unique: z57rQjVfOzyfXor5e4idIw-1
X-Mimecast-MFC-AGG-ID: z57rQjVfOzyfXor5e4idIw
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id AF5B840508;
	Fri,  6 Dec 2024 16:58:30 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 70A72100BD7; Fri,  6 Dec 2024 16:58:30 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 6EEE9100BCB;
	Fri,  6 Dec 2024 16:58:30 -0500 (EST)
Date: Fri, 6 Dec 2024 16:58:30 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Didier Spaier <didier@slint.fr>
cc: orca@freelists.org, 
    Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: [orca] Re: Sorry for offtopic, response to the blinux registration
 list not working
In-Reply-To: <d17761b0-8c45-4356-8a19-f4585633c827@slint.fr>
Message-ID: <Pine.LNX.4.64.2412061655390.706110@users.shellworld.net>
References: <876361b2-68e7-44e1-ad8c-d2a3a838f854@harrastenurkka.fi>
 <a4765a7a-e546-088c-7f43-7c2038dbe283@hubert-humphrey.com>
 <039001db481b$0ea43140$2bec93c0$@gmail.com> <4c3ac83d-ad20-4413-a57d-a23874518efc@slint.fr>
 <02f144af-7577-e873-34b6-a8bafe5e2915@hubert-humphrey.com>
 <d17761b0-8c45-4356-8a19-f4585633c827@slint.fr>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: mHzV5QnM-9j5SqZ3Eaa-8NfTdRZpK-N1eQMGx6YULYc_1733522310
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: -3SDuixftZ7RVhxNigOHoOL5FEcLQ55qSSzZUn78GXs_1733522314
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

Interestingly enough I have heard mixed stories about the host tools at 
freelist.
One source claiming there are issues, another using it fine.
You may wish to first make sure you or whomever will host can do this 
well.
and, make sure folks can join via email only, without having to log into 
freelist.org..it uses a captcha now. Or did on last attempt.
Kare



On Fri, 6 Dec 2024, 'Didier Spaier' via blinux-list@redhat.com wrote:

> Thanks Chime,
>
> unfortunately this information is rather old, thus many of the links it provides
> are dead.
>
> Unfortunately the blinux list is only partially usable and provides not recent
> archives. Fortunately the is one here instead:
> https://www.spinics.net/lists/blinux/
>
> I think it's about time to cease to use the blinux list that seem to be
> under-managed if not no more managed and replace it by one that could be hosted
> @ freelists.org as is the orca mailing list, which is free with good records.
>
> @All, what do you think?
>
> Is there a volunteer to register then maintain a list like blinux@freelists.org
> replacing blinux-list@redhat.com?
>
> If no one volunteer to do that within a week or so I could do it, unless someone
> objects or have another proposal.
>
> Cheers,
> Didier
>
>
> On 06/12/2024 22:09, Chime Hart wrote:
>> Well, Chris-and-Didier, I am glad I save as much as I did. In my Lynx bookmark
>> file, I have the following which has several mailing lists-and-an ftp archive,
>> which I haven't tried lately
>> http://leb.net/blinux/
>> Maybe an ftp index will provide dates to imply if any will still work. Best of luck
>> Chime
>
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
>
>

