Return-Path: <blinux-list+bncBCV3N6GOXMCRBFG4ZKWQMGQEY3VOBRA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f72.google.com (mail-oo1-f72.google.com [209.85.161.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A8CF83CB9C
	for <lists+blinux-list@lfdr.de>; Thu, 25 Jan 2024 19:53:10 +0100 (CET)
Received: by mail-oo1-f72.google.com with SMTP id 006d021491bc7-5997417c351sf5506995eaf.2
        for <lists+blinux-list@lfdr.de>; Thu, 25 Jan 2024 10:53:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1706208789; cv=pass;
        d=google.com; s=arc-20160816;
        b=XSgXA3Kr5BX7zO0SpXQp0aKrZdK469Hg175DdftuBS6F5EYpghRdSa03/vARa7oEHm
         s4CfTAL3eP1Qu/W4UU0tWoXoLYZqgm9vO8huKd9OKLAfoLC9FJ/BbYprekp7Rmgq5wjb
         47AjxTv1d/ddPVF738KiWPXyb7/YiBmjhVVB4foMSmMlZnOf2XozY13NY+JHOmxIniPF
         khZ04ZsK4GFkvSm87MQd/et1UDz7Zw9F67CtCOyNzL4Vr1GkN77WZvkJ+g8ctDHI1ddo
         xiNZyTJCKVX/oPY5FEOe0gnsOiHchD9GxTx4JIy2pmjFaVN5g4x5TCrqjF2wdZTEk+tS
         5JHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=nrBpDI/8FVbea0SrEH+jEP6OnR4xEDDywtBrIeZxa+0=;
        fh=LBjpU90bP2emkazE0Gc5OAoaiqgp8P8XIgkk948Hows=;
        b=UO6o0hfK2fGL/k1ESgKCL1ozbE+uvFF25zR1944VKL5jIndYUQ7bLqVklGwPUtXrnn
         wzRmcGe67eJM4edUKpIhRrr7gAJ/adrcGzCy1t5QX6r4zDgfdd8pMamDd+l998zL0wYY
         37nf3ySmj+9OqpkFysAW1XEmYsUkYYzMMueTNBtiYVp54qBQwdIJWmHmrJJNfw4nxsSO
         PswnE0PHDDa2rYCoW+fsKH1IDhvQs3zk1QK9I+daLLMsnKNpajnGkdeHgTGQjQjcleF1
         WWo7a4wQBkMgv+VDJ39H+0rbhrfS3cmJ3RNc+WjRv8sGj98FltmDU5RhdBH9gZwOhxAh
         laqA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.15.18 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706208789; x=1706813589;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nrBpDI/8FVbea0SrEH+jEP6OnR4xEDDywtBrIeZxa+0=;
        b=AP0HW90LzJZmfZ+UD7asabM8d2GJxtmV+0g3GokbqbxUlN38vbYljLnnf9CePzhK3X
         Niax+CMQCj+Wqsfe/8ArmhRRy7eU3PH/yL6Vgrpwb5Vz6sP/2uPoCj5lGVHRB7Cw1ArK
         vA8fy3aV35UaPsYHkJldNJ8Ixxdtt/Kk4MiMHDdT0k2PawRJkuEaVZLeGzeRuWusY/l9
         RRtpuedr7cr1/euoEWWwXnqBmZ7wPNXfrsDqPbUY5hnWifTw8tascXUHvoXxc4Uyv4YF
         AC09mlpMpSSf6iN4PAcHUZOwO/LKDRmFi2CkFQ4BAnBFq9YSOB0fu+lhUGT7JB3OK3ht
         l6Ug==
X-Gm-Message-State: AOJu0YzdfcdgmnF/KFx7CVFlGwLhcoCouqSFL0gxiXcKs96FYbIO3hxP
	KWVM0LZcjud0SUSs910XfwZ+F3e7qhv/Lg8tSRzVkX7yAgzwtDHQL3AcFL3TXzE=
X-Google-Smtp-Source: AGHT+IHV6/S8XAKj4Wm9niUGggbGJeWcYMQXw6/m4tCi1xfQGDxQOfhVhyfTG5GjlV3UpC1TK2u1Jg==
X-Received: by 2002:a4a:a8cd:0:b0:598:2d9d:db46 with SMTP id r13-20020a4aa8cd000000b005982d9ddb46mr167266oom.16.1706208788881;
        Thu, 25 Jan 2024 10:53:08 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a4a:98e1:0:b0:598:db3f:b1ae with SMTP id b30-20020a4a98e1000000b00598db3fb1aels45461ooj.0.-pod-prod-04-us;
 Thu, 25 Jan 2024 10:53:08 -0800 (PST)
X-Received: by 2002:a05:6830:144e:b0:6dc:91b7:ca96 with SMTP id w14-20020a056830144e00b006dc91b7ca96mr290125otp.6.1706208788187;
        Thu, 25 Jan 2024 10:53:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1706208788; cv=none;
        d=google.com; s=arc-20160816;
        b=VyFQfGKyIXCLjvbtSROsB7Pc66ywMjqGalT20hR/lV80nd6A13MSzzpkRppGVJDnel
         vPOWC20w1JvZEN8goabmx38JrSiZtsAi5d1KCVbBAebu8CAgbNf7XyvAMloefqLOh9M6
         VKfUj5yIlD7BPYUPJrsfe/7FhSQPS5jgHzzSt7I/FxImrhdeDb6UWPhjwcxW94+qQY5z
         e24kcuV3d8gP17ezhXY+FE9vT0446WeceS8Peu0N73xIv2hE13elf9QmntDA+yUa5+pG
         fvbHB32p+q5ZzxXalRgM70JSAhABskpJ/L8h7dh1yDWZWQ4Eub3CBfvC2zPF5GAkClav
         vqqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=esldhVhkw+KoLk094sJp8WnMFhfDKqT0yLYAFUswnwM=;
        fh=LBjpU90bP2emkazE0Gc5OAoaiqgp8P8XIgkk948Hows=;
        b=bV/XXefiAADiYdgQ8cU+lr0Jyi5PvtJi0UcdgIu84F8jZsSnqlUxR3ZJY8PcmG9jei
         8FWWz0ONsNzNfbyYcZhIULCeqDHcBaA4IdMUamjRqOxTPQr1kn+XAS9aKBKgtUfRKkag
         CPv5CD9dbDhl1CBhVhYqfZpyV68o/j5DewbO2EfoEeRILeFo5e4PBnZaubtAePw4otoy
         ccfWt/cpQda/ihI/7IL4Vip/9UKfbbWW5dpkSxy05e+HCTU5KtFaY7yL9CAK25cjzVQv
         Fqjkoj8f98rsWO9nD1qT8+vcoNdnC++g6xs+ITd1a2S4NBxIl2DaehDHs37wgfUxlHat
         oPvA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.15.18 as permitted sender) smtp.mailfrom=kyle@gmx.it
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id 13-20020ac8590d000000b00429c6bc50a4si13289090qty.528.2024.01.25.10.53.07
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jan 2024 10:53:07 -0800 (PST)
Received-SPF: pass (google.com: domain of kyle@gmx.it designates 212.227.15.18 as permitted sender) client-ip=212.227.15.18;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-154-Kxuepn2-OaGPl-ZoRs6vug-1; Thu, 25 Jan 2024 13:53:06 -0500
X-MC-Unique: Kxuepn2-OaGPl-ZoRs6vug-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 652011064C64
	for <blinux-list@gapps.redhat.com>; Thu, 25 Jan 2024 18:53:06 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 623918D38; Thu, 25 Jan 2024 18:53:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5AE632A79
	for <blinux-list@redhat.com>; Thu, 25 Jan 2024 18:53:06 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3C18E8352A2
	for <blinux-list@redhat.com>; Thu, 25 Jan 2024 18:53:06 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-582-wUl7AL2UMRKApqF4KuyJtg-1; Thu,
 25 Jan 2024 13:53:04 -0500
X-MC-Unique: wUl7AL2UMRKApqF4KuyJtg-1
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [10.0.0.20] ([136.54.145.217]) by mail.gmx.net (mrgmx004
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1Msq2E-1rDbML48W8-00tDBt for
 <Blinux-list@redhat.com>; Thu, 25 Jan 2024 19:53:02 +0100
Message-ID: <33681ce8-ccbb-49cc-908e-31782dd27f7d@gmx.it>
Date: Thu, 25 Jan 2024 13:52:58 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Something small to install Linux on.
To: Linux for blind general discussion <Blinux-list@redhat.com>
References: <A9534E5B-88A3-4F43-914B-846CF6F8E465@pipkrokodil.se>
From: "'Kyle' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <A9534E5B-88A3-4F43-914B-846CF6F8E465@pipkrokodil.se>
X-Provags-ID: V03:K1:jHjKfhA39lwueyiJKqnVFyWFmcbsDkS3qL/hPrZIf3QIAxtXtw/
 I+l6jv9A5E9M7H8fM9WZV7NmZpGWGSdaq4E7Vb2tf3xC27G6Dg7EEvNNGLMmt01uBZHZV6c
 YVGmP7t3ypCeClXrDYIyRJb3zlyyAavU2gOP479KhlYGmNKxQaigwiSxTvPbtJo+ASf5SrF
 iipCAtyaeqEdmOOUAc2XQ==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:0UGd/uF2mYY=;eG0KaudQDpYInfP33C8vJ43l4ds
 Ndk3/e5pyEHP24dMQsYGCN9xZt0LbmVj52HS7fbYeoIpXdpRzToJjECu36qDxNYWJD0txcGnj
 ymriYJaC6XN3Mb3hI8ZZthqp2zNp3Nqyxlh3y8Oy0106x/hYVxbXkwDb6BgpMCBNAvXsdMZ4h
 D19zMCe+fLDd3oeqk2c164PK0gdSkR9X2xu8rrm0xLXEKpFcjuwHKOImFbg4TmmWKhBwSJIl5
 G7ZRoPopHPQ38hWmpN3XbSFOBIB7IGiuQtq35MicW1FWMDgebr0v1vYFf1BX5MRSjWyDz0Aiy
 nx6MGLs+JQFrK2yMRTL1GcBu3Xf0Pb3Z9gMTmEGKk3hwU2eUbWQAAu0cti1mDfuPEdcBwkU8o
 TC9G8DM0hQswf5HEz+Rx8ZDSK2VQn2vevS22PR+ncIeBszLNON7lGEc5dumUZzhjmvddzLIJa
 a9qSTcASmtmuPGLGi9OtCJgFZVNOLerNBk6+SmdxykwouWR5EDB7PTWJg8H/3tZwxrhnETB0N
 kf3cnTB14qiFcFCcyLKnEiF7E8q6U2z8M9/UE4ducj5NctvZfUptycGT8/kiYu21RNrXWr6r9
 UC7tf3N1unBd5dsetRWpktdn8/4Mdzr7y75mZdv9j8bfc1BDHdyRtzHxPxzC7Mk7IGmc97gmG
 ijEse0ucwG2rNP0CgJvIEkrqVdFplqCTmMVqpz88uDltmpNRtxfSxTBxVK8aSJLIWX7bS3Yr/
 yOZtSm3aLnSUOT5VONpenPh+JQaOMeI/4clAvyuEE8QpI1f7QtymOC1EGWLb8Cf8stvCoDI4a
 q7lJRVen7c4POJC3A55Cu+WPiylWPKdLTq4JoqdKZ8Va+lD1srJfNc07KcGc4a97DeA8tTgga
 pfJisbVOx1nHLUJGwrrBcoVvGV4IdFqGDVCIwsW0trn1x6lswF2pPDBl2+PzIgv4N9WT71g8V
 F2FpWnYqmDquNA1acjO6sedFxEM=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmx.it
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: kyle@gmx.it
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of kyle@gmx.it designates 212.227.15.18 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Original-From: Kyle <kyle@gmx.it>
Reply-To: Kyle <kyle@gmx.it>
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

The Raspberry Pi 400 does include wifi and bluetooth. It has the USB
type C port for power along with two USB type A ports. You may want to
get an inexpensive hub, as one of the ports will be needed for sound;
the 400 has no audio jack. You will need probably at least 32GB of
storage to run most Linux operating systems on the Raspberry Pi
computers, as you do want some space for your files. That said, MicroSD
cards are fairly inexpensive these days, so it won't hurt to get
something much larger. The Raspberry Pi 4 models including the 400 are
compatible with MicroSD cards up to 512GB.

~Kyle

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

