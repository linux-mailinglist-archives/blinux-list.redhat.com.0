Return-Path: <blinux-list+bncBDM4LSNO5MHBBJNH3S7AMGQEVPT2P5A@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 72AA8A636E5
	for <lists+blinux-list@lfdr.de>; Sun, 16 Mar 2025 19:08:40 +0100 (CET)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-47693206f16sf78927671cf.1
        for <lists+blinux-list@lfdr.de>; Sun, 16 Mar 2025 11:08:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1742148519; cv=pass;
        d=google.com; s=arc-20240605;
        b=bBWeZsJxMgUjlnlOA81b+nf7y81967nu+Htk+sllG+gKdFhOVKXmQ6xm50lQPOuJN2
         mKcxdwxkWGr9r9e32jExTeM4uqC40YcOsodFNexh+K3Kq7keFIXYKSM+OCEUNiC2ZrCw
         rSAPcplSsIixTa8Do+qmOPxViFyuz4rJe5W8hVrIcBD11FTwynnuJVYS+HjuyNvqRy8Y
         Q9FQl9xR8+4qaz7JPLV0Tv2FH0/Z9iu1XW42pxgtiTJhiX1fOSKrVlGvWYJzr7yAEj/9
         UWlz6F97mVxgB0vIru1yN1/Ejh7Wclo+L5PyE0NsJOJhw37ydLnemK8a4mYcK7q0VwLS
         gvww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=uh8s5qQQ55AAXRI0+DgpAx/itRPHepVuRdwtkBnYHG8=;
        fh=Y75hvV48yJZqHey2lb09Il4Xbo5hriHRMmaurSpxT+8=;
        b=XhMHZ22DMS78AVZJSVscGuMZwBevuL+H946BnuCt4nmgh07wAcGaHrkYfzIEoQDh80
         gsEmAxrpi/2jljYVQvpVB0HEn1PatTTyGU9l3+j652Qym8A0mgPYBxzggihzWgdL7u7D
         WcucfoV+MN5u+TaVGVfuz/khexrNgGXBBZ7lt1QgCFG6hTZ0VPBLwiljN6G24XGgZRa2
         sOaCvukxGMktHkpkCiI6KNHwdHkNmdynVk9zkNAKa/iQYQX7g0Ln4fF3JTeplwzmKGW4
         5d7u03fSkM3pbiQxhSSR7L8lsmmwQeUaN6Lh5fe31wek6u2zQ+FtpyQ9vrtJ0CC9kCHU
         Ztew==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.200 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742148519; x=1742753319;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uh8s5qQQ55AAXRI0+DgpAx/itRPHepVuRdwtkBnYHG8=;
        b=paPgfetO6e/CtwtMBjWOC+daj/F4rSnFznsaqJMdpMjw+iXPy2qRMECUmoz14BBL9I
         2OAlZB85rpwTZ5pGl3SewESKH7KomyIPTxXDma5hUsvJJ2GTP5jH/v3piujd3bU5jn8F
         FUoGV0vASi1yCb+WBjGVw4bbN5l704wk9Fiovc17KDQOh9NC6W8pemkR5g4aid6rDDjk
         pUZ7uSmBXacjUuxDlDUrd9/PFSMt3HriwFxAkk6y8h2w3s+U31zvdYyWt4NfJNM+6Caz
         RmEEU4DrhLlSqxRN4wujq830ho/PyKLM3F/wWKH4IAz4wFFx14+gEzWumCFQuhptb+1U
         ryOw==
X-Forwarded-Encrypted: i=2; AJvYcCV9hvJ/U6MQNRo59thTMua0IfF3AAa+NfZ3wC0ysZDgaKHrMzBi+Y/oVoIU8zMtBsKgfhamAw==@lfdr.de
X-Gm-Message-State: AOJu0YwHrZWvql1n3DQfCsfsOc0QBV3nR9b30nj7dfTddZgd4sI/JKrE
	4knOIE2ukuN5o3FWvkS50a2pXnMImhY8JeA0GVcdXBOo0AkmpKXeK0+qOyoNDo0=
X-Google-Smtp-Source: AGHT+IFW2t45sj1semnuUpuJMuIVpTwDvjFKxAqpNiFe0APXUwckKrNM3i6ZIuaHgyKIJ2kIUnG6OA==
X-Received: by 2002:ac8:7f56:0:b0:476:7b0b:3110 with SMTP id d75a77b69052e-476c812fd86mr168122301cf.20.1742148518591;
        Sun, 16 Mar 2025 11:08:38 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=ARLLPAJHzTgzkTvsZ6UaTYCG4LWcIK5Wa1OBNh/7CLLoXj9Jlg==
Received: by 2002:ac8:7f0a:0:b0:476:9198:df22 with SMTP id d75a77b69052e-476b7d9a2f0ls69651231cf.1.-pod-prod-02-us;
 Sun, 16 Mar 2025 11:08:36 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUwBYHgbRqT6O3wSC0HmWgwiKz1D76TTExjpkuoUD4Xx6wU2FwJUyOD91TwuKTzMvnWkAUgrCm7bJ81Zw==@gapps.redhat.com
X-Received: by 2002:a05:620a:46a0:b0:7c5:5d13:f188 with SMTP id af79cd13be357-7c57c80f088mr1215184185a.26.1742148516703;
        Sun, 16 Mar 2025 11:08:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1742148516; cv=none;
        d=google.com; s=arc-20240605;
        b=De483Nzjgr/pYdQjr578u4VQsoPOCpaY3xZbUasJtvLGiUO/hYdpBILVHWvgyYC0h2
         uiDEpj4k+WWQznVmuhWFq7oxqgh8NIQZ1oGvc1G3fkcv4TJOwPX6IQv4Mjelbe8U9CRC
         nEMTOmlijynxKSisiJSyshZmvAy5d7T6xSDJgoHjZsE11elELM4uFGZ/tuZt7oZaY7Pb
         YXmdlKIwrc9Ccn9La8BGdZiXwCOm/gdd+MnIkVPUyb59TxmlLqz0JnF83Eu/mEzfkiWu
         gsCJyqK7ntw2dZCdnzXHDVnBegLzv9G6sp3DazDJlrTZnUVl7xGB1yUuxXiVN1zVQw/n
         c6fQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=XBHcXHhQ25hJgLQWRFKM8edoLiGdQBbowwNXwpXJ2E8=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=cdfFfgaOAvxfwnVI5hFtJNL0vzdyKTnQbL+/4A5XBI2jPyKpW9C04qWVnH7CCTlJuW
         GYZGYPopEe9J4ySm87sVk5xcmlZdASIC9k4tkqAYHBkBumU5pTWmGLfEMZKkHGNojl2D
         D1IsVbaHs7zXapnHe6RgAgPUy2qAvszB98ID+YMTQGOq2NzB0xsZC0ELT9TAtK/h1rW5
         vOtEg/gcM4Kp1KSMw97/EtT7T+WPYrVjsmreRNObofiVgnerWT2qTQv6ia7gHYr2wnxP
         /LGI9drPU4Yiz7tfIwbHuvfMmDH8k2r9ddW9k9FhsXeokAkItqnH/hz7HP5gvLjT8YPx
         ruMA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.200 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7c573d1a85bsi813773485a.583.2025.03.16.11.08.36
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Mar 2025 11:08:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.200 as permitted sender) client-ip=74.208.4.200;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-53-mqsUKaU-NnWx9OE6LcuaKA-1; Sun,
 16 Mar 2025 14:08:35 -0400
X-MC-Unique: mqsUKaU-NnWx9OE6LcuaKA-1
X-Mimecast-MFC-AGG-ID: mqsUKaU-NnWx9OE6LcuaKA_1742148514
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 87E8A19560AB
	for <blinux-list@gapps.redhat.com>; Sun, 16 Mar 2025 18:08:34 +0000 (UTC)
Received: by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 4A6F21828A84; Sun, 16 Mar 2025 18:08:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4795B1828A83
	for <blinux-list@redhat.com>; Sun, 16 Mar 2025 18:08:34 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id CB32219560B6
	for <blinux-list@redhat.com>; Sun, 16 Mar 2025 18:08:33 +0000 (UTC)
Received: from mout.mail.com (mout.mail.com [74.208.4.200]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-663-edTVMxBiOESZ-3RPgogmYA-1; Sun,
 16 Mar 2025 14:08:31 -0400
X-MC-Unique: edTVMxBiOESZ-3RPgogmYA-1
X-Mimecast-MFC-AGG-ID: edTVMxBiOESZ-3RPgogmYA_1742148510
X-UI-Sender-Class: f2cb72be-343f-493d-8ec3-b1efb8d6185a
Received: from johndoe65534.mail.com ([81.164.0.33]) by smtp.mail.com
 (mrgmxus004 [74.208.5.15]) with ESMTPSA (Nemesis) id 0Lz53m-1t7hdu1VhI-00r3zI
 for <blinux-list@redhat.com>; Sun, 16 Mar 2025 19:08:30 +0100
Message-ID: <19bde197-e22d-4f2e-a69d-2a47f1ac33f9@mail.com>
Date: Sun, 16 Mar 2025 19:08:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: firefox or chromium Capturing A Table to a Text File
To: blinux-list@redhat.com
References: <E1ttmRL-000ND0-2x@wb5agz>
From: "'john doe' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <E1ttmRL-000ND0-2x@wb5agz>
X-Provags-ID: V03:K1:4DJhIAceBO7KDqnKBJbB/nAjDkrtBghtNmX9/z4HsBq2+yaOrTA
 JOqW32LUuxqlcAYFQZD6OvYKWgFI4rFt+cxwS3uuvyDtDU28T0Sit7EiInqIqMTEcS3KV7Q
 s+aYLWQqyitcSTGo3luEafxQTpsClhJzWx4cTTdsFA7FyoqTb/V3gGcnqC6FzMFZwqVhOwv
 ICtJEUor9Bf7nvQbm2flg==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:vXp+DNyHoSs=;8BEbYK3S1xxqcTO3MEFoJT1eMrd
 ZlaPoyQXaa3/H+ROiIb+T27l9MnXQ/9gwyTsPmShgH8FqnDYM47x0fo4FmiTSk1aAfLUnQ7ZR
 ePNS3PAxTQ5yMZIAV22WH1ZfhTPo1HIqo26jOWeQrZNqaQb0mHT0ZS4cGv6ZYXUQMQyuPR/T3
 z4G5xUgx9DrWEH7n9SSNIqPOViOO5Zggskdd4QyaTUL2r3RGUShdRCEfefA/BFAO6isN7BGWk
 eBvWJ2Zj5GAObUGFGiW+uNgaoI4F59gwBx2GtVXrKyCWf8HVwgDKmguGKgYKnKnNd/WzVGKfl
 IDCsGxflWSZnhTZ3Ug1QkOMevOTmpzliLEOuGLoEjBbCGLs3lOe6+Tp4cAppQHgNJHZPGtFlB
 GmZGy4GneHu83a32Lki6i1JbonFzzMrM+tyI1HN0QI6laCO4gFZocvyQmkNzdKnVorqhkN580
 rRok7Lr8P3OF0PjragmgZxhJuoj7IFx/0A5I/c3s2uiYnQm7Qm5S0/nl/b4Qi4p+VblMKYJfz
 R2o1PMnCtnICZ/zmjPi91mUUsUuhADqTfuxfvzIiHP+1wKEBp3s+4ypau/maQLcrBWvob5opn
 aKAvJnQlwI5V/agnLUebW9T0Esyym3foBQqsajeA0iK8dC9jJuyrPptTc7UI1c93jtHmHjToA
 thM5X0djzy5UiTyVshXDP0p5/YviZAiNbedIxaixoGCzUAylHZMD+yFEBeRjPY3BEVgQ9Oz+I
 hjjhoNZ/pwuqoGoJ4P+m32a3dYQl0+zlSamuTf39RuE6gQhFH0IyyjDgp/ACunmaDjPi8jf0A
 oGMYK0xj2ux2t5d7TP+BiGk8Kv7Qhz2OwDKU13M54RzRGO1uww1oE9sy/IsMg/mUYl5CoDWtS
 TpJDAGBMjSHzbkRHxL/mv4ZoaTyjvVo0i/k5kPyr5zB4Jz5NqyH8Kw3VFHi+BEt+pogvcvWpi
 tKTOJbWPsirfu8KUPSc6Z/+JjmhELbHvs1h2INA9z13cG63VNx2K3aHt4zGFOhkG9BQi2aI5O
 UW0GEDb84xCRwBuXn4SFZNmxFRg7mhQzXvQVmmGJ8QwrrTDdj1micrW3R8yn+qNKHGdBg1yi1
 SFd14wdl5N3s8ViC3D/1XqEd0i2X8B73ZOUwhoZ2HFcUbTPleqvweHAZT9+yDjSjSs2m7XmeQ
 +BAPk0UnWJ5hvjZ/xsuWbdYg7lw4bKG6HPm2CFo1wpxk5iMNzAq4Pg2csH5ylijyua4OyaA9j
 pEyI+qCSi3ei8Vg9oTE1QLk0F907+feyI6WyNqFPKkQatBXOpzOrnyIm0SWP4bpwFf0q/wta5
 //b0/Z5MmQ3ljzQ/Yn1/6KSpEDhNoLMIEi4xroStBazvuN74kkfTip/aY52VZcOZNlT+NEu54
 bj1ilQf3/SuIs9lpuepytFYmLl/l4CvvyP1o1/se18EDwStnwI0h2C6En5jfSCIMx+FoQAbtY
 4PUwKmzQWNi1veeh6uIimehStEvg=
X-Mimecast-MFC-PROC-ID: rA0NsLRwolYfqKs2e73jniSal570_mxzRSZCCKl2yt8_1742148510
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: XNekxOfv5pzozYbweCUZyQW0lLUrFo8wFvqE9Z_ErCA_1742148514
X-Mimecast-Originator: mail.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: johndoe65534@mail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of johndoe65534@mail.com designates 74.208.4.200 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
X-Original-From: john doe <johndoe65534@mail.com>
Reply-To: john doe <johndoe65534@mail.com>
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

On 3/16/25 12:45, Martin McCormick wrote:
> 	I just had a heck of a scare at our house when our ISP
> had some sort of day-long melt-down that bricked our 2013-vintage
> Netgear router.  The router is actually fine and came right back
> up as soon as  the ISP stopped feeding it poison and started
> working properly again but I think it is time to retire this
> router and go with a Linux or FreeBSD-based router that lives on
> plain ASCII configuration files.
>
> 	Our present router is a NETGEAR Router WNDR3400v2
> and probably might make a good access point as the hardware seems
> to be okay but I am sick and tired of dealing with the web
> interface for administering the router.  Web GUIS are not
> efficient for control as one must do everything the GUI way
> rather than what I call the easy way which is,  Edit the files in
> question.  Give the system a n update command and you're good to
> go.
>
> 	For 25 years, I ran the DHCP and DNS boxes at a
> university before retirement so I know what I need to do.
>
> 	The Netgear router has never been very blind-friendly
> because every browser I have tried on it has some sort of issue.
> Somewhere along the way, I was finally able to change the
> password because it comes with a default password that one should
> always change unless you want to let all your neighbors share
> your WiFi.
>

I always buy a router that is OpenWrt capable for that reason, the one
you have looks to be capable! ;^)

> 	I could reset the router to gain access to it again but
> that would clear out the dedicated IP address tables I created
> over time.  Those tables are visible as I look at the "attached
> devices" tables so if I can capture those to a file or files, I
> can make the ASCII tables in to the sort of files that the ISC
> dhcp server uses which are ordinary text files.
>

You could use `rping` utility to discover what IP and associated MAC are
used on your network.


> Thanks for any ideas on capturing the tables to a text file.

If you look online, the wndr3400 looks to be telnet capable with a
specific packet.

As long as the TTL for DHCP leases is long enough, you should be able to
change your router without losing the reserved leases.

--
John Doe

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

