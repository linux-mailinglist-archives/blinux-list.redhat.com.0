Return-Path: <blinux-list+bncBD6J3OOK2IIBBV5U6WUQMGQEQSVU7UI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-lj1-f200.google.com (mail-lj1-f200.google.com [209.85.208.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 060FE7DA8C1
	for <lists+blinux-list@lfdr.de>; Sat, 28 Oct 2023 21:00:41 +0200 (CEST)
Received: by mail-lj1-f200.google.com with SMTP id 38308e7fff4ca-2c5073588cbsf28606931fa.3
        for <lists+blinux-list@lfdr.de>; Sat, 28 Oct 2023 12:00:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698519640; cv=pass;
        d=google.com; s=arc-20160816;
        b=m9nOfCH4VhgNzMUyo7fPruKngsL0PFyKoIyDhBjF5VDN0bWruzP5knaNBgTU0Uf3mm
         QdvjWDhWKYy/xLZBhtu6cfwP9OgITwYALUu4TytOfhTKsg2iT3s6quR6r8lU5Q44/3/S
         DoXE4Zx9D/yZzbHMG7T2yHZRDdhsRQ0Bb5dT+c4EuyMu913AhFP/HOnb7Q/CPGGOp8/1
         8gJACTWVK91wnVVPwBZXp0Qs0hVwsa34n6EJSOW3NHrGIu5Z+bUKXVZcu6qqbAh/Qd4b
         QNrkr+YnBm5Svz/JVXdmVdi2VmqyE4Da90i1pzJPFqZpTF1lVPrwcp86QIDBsM3Y3oHt
         1HCQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:ui-outboundreport:user-agent
         :references:in-reply-to:mime-version:date:subject:to:from:message-id
         :delivered-to;
        bh=rZCsKiY42tv8C5SeKQK3l4kqHOmuyStem/ewhlqHhCU=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=ddupMS/Et00+T8ygQ2U6kWn5Sm86uTMw7W2q8I6RbrCynHdSKD45H8xf/efQ4qJ1dt
         B3T0ZjANN1Z7a/J6atUg6EDkDm3hgvtdB5Cmdp3gm5IC2bIvWOPh+hvNDp3D7K6R00l6
         uXh14SsO2F5BffnwOQ/Xmo+aclthDyxY8pmN/+c/1XRuvlpSNDvMOw8D7ucvqJe3r51e
         rOUmY89Luv1G7yMonAQoK7ckGZDnyp6jS6AbqCg6zKo0QwV31LSSwgtCTHtul/1TFxZt
         FSBmczEjQCDbeJOgoz/AfGzNeag2RE/qkglE/vQy5Iz+pk5CANEHe1wc41XDnQ1DAlBv
         Cwhw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.17.21 as permitted sender) smtp.mailfrom=rob_hudson_3182@gmx.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698519640; x=1699124440;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :ui-outboundreport:user-agent:references:in-reply-to:mime-version
         :date:subject:to:from:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rZCsKiY42tv8C5SeKQK3l4kqHOmuyStem/ewhlqHhCU=;
        b=Pesc88vofDD8ku9sXuStW3XnJVtMOoGnybBCMbe3e4BsM6CyGFtIEmcJNuzTexVRjU
         SGiNk4hbeWdd5IGOlDZ8XFfnCrEOKKtne6ynFUTmseBW7pAXHM1AJNg3ZkEio9BQl4nF
         WzSLLwSRXRM1J7kB3rnGWOGUe8zQiHw7O8pv8tq1fv2a1VSsub/GXEpcXOBHKoO7d/H/
         Nl8al2lUivJPkbyKBeMOLOcYoCIFKm7OLGYpvzi7f/nV20m9YEYBcEyuk6wC9mAz69GT
         tUoxtxIPED4iR1EJJvRUMi8w/oxxrIsqCQkcaqu7zhWRjARxVMfq/npzS92DCee+qwhd
         0D+w==
X-Gm-Message-State: AOJu0YxwfEpGDS/qKFrTLsgozCFh1JZhIGykiZaES0S+ccvnyRb92o4l
	xWfKJmT8ZPRVi1k6jfhCSOeniw==
X-Google-Smtp-Source: AGHT+IFcAC0VNBlDqYhgUluLDIohIjy2sfL5GD+u+sFj2bYp8ZCaoWX9jVPctWTZrUNr9jn49kBqMw==
X-Received: by 2002:a2e:86c4:0:b0:2c5:f1a:1f31 with SMTP id n4-20020a2e86c4000000b002c50f1a1f31mr4935511ljj.1.1698519640042;
        Sat, 28 Oct 2023 12:00:40 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:651c:19aa:b0:2b9:34cb:5cdf with SMTP id
 bx42-20020a05651c19aa00b002b934cb5cdfls441575ljb.2.-pod-prod-09-eu; Sat, 28
 Oct 2023 12:00:38 -0700 (PDT)
X-Received: by 2002:a19:8c50:0:b0:507:976d:89aa with SMTP id i16-20020a198c50000000b00507976d89aamr3310478lfj.67.1698519638337;
        Sat, 28 Oct 2023 12:00:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698519638; cv=none;
        d=google.com; s=arc-20160816;
        b=HElXrf6UsV7e+VnQSrp1/UhLMqoGb5n/gA719+73N2CmalEXz6AfbjvOwJo5GT+P9Z
         UeZ3qTlhhGfsSYqpNCsCNPn9Wk06aBYANEqSqmeqzhK3Z5yKhx0GtVk9Ndhto6n/WmsU
         NTaJ8s2qO7AIgB67YlQbuCvnTqftjU5S6HI1U/br5P24MqTs4h6R/OyXcI96o6JCfkb6
         95wGEPs8YBDkdnph7S3Jm5C+VrTvYCloT9pfhEFl8J2oVPR4u7TGvZsCKr7Efg7XVJ+b
         3sOFMj7euW+5SCE8V+XQMWgG4AnppExi4g/GvdjuXz4Errn224r5B3Rvmk89yDIyXC1F
         JE+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:ui-outboundreport:user-agent:references
         :in-reply-to:mime-version:date:subject:to:from:message-id
         :delivered-to;
        bh=QIWTbwuEQSA6N2z0+YBwBHWrzmCkmgFRQV1ZOsZ1hjw=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=UQS1+DhOKczh6lZVDDojRWR04ZUM0NCfz7RqAyDAU9dZF1CkufMSFGhxaSLWXogDD1
         bQl0JYdAv9OQmRpYQaqV1DPjSDOB9vL9gePF8ymncbvlOc1H/xREpGGN8J4x9ruKwqV+
         4bIm/vijFY+U6lmyT7ShFsYdgo0wxZWIc4l34RD+eLQjJKpCe0gAJaGTgJCah56UFaJO
         WtDAabXkKorylAfVneYHuIPMrlvRru6QW2F+lLjpBiYA3pHrouYXMBUe6eR8PNxLeeGH
         3EA3bhfY3Nr6Fzv1taVCH1lKpLU6uZPlawkSsv9SezEt24CaYTkGkIa1sEVzUWQ4si8q
         U9zw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.17.21 as permitted sender) smtp.mailfrom=rob_hudson_3182@gmx.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by mx.google.com with ESMTPS id n9-20020a5d67c9000000b0031fe5d62da3si3197132wrw.784.2023.10.28.12.00.37
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Oct 2023 12:00:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.17.21 as permitted sender) client-ip=212.227.17.21;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-618-h_Z344ryMOyOZIDmJ-a3kw-1; Sat,
 28 Oct 2023 15:00:36 -0400
X-MC-Unique: h_Z344ryMOyOZIDmJ-a3kw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DE6343811702
	for <blinux-list@gapps.redhat.com>; Sat, 28 Oct 2023 19:00:35 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id DB114502C; Sat, 28 Oct 2023 19:00:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D375D502B
	for <blinux-list@redhat.com>; Sat, 28 Oct 2023 19:00:35 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A5BE080D720
	for <blinux-list@redhat.com>; Sat, 28 Oct 2023 19:00:35 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-654-GR4G4GgzN9mPkcPqbe3Keg-1; Sat,
 28 Oct 2023 15:00:28 -0400
X-MC-Unique: GR4G4GgzN9mPkcPqbe3Keg-1
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.1.100] ([208.107.97.40]) by mail.gmx.net (mrgmx105
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1M6lpG-1qpdoL0LBW-008IKN for
 <blinux-list@redhat.com>; Sat, 28 Oct 2023 21:00:27 +0200
Message-ID: <20231028.190122.401.2@[192.168.1.100]>
From: "'Rob Hudson' via blinux-list@redhat.com" <blinux-list@redhat.com>
To: blinux-list@redhat.com
Subject: Re: Dualboot remember last used os question
Date: Sat, 28 Oct 2023 14:01:22 -0500
MIME-Version: 1.0
In-Reply-To: <60b6f108-a67d-4d86-83d9-5bef4f91aa89@jasonjgw.net>
References: <9accf86c-3ce5-44e7-8495-822f2f363540@gmail.com>
	<60b6f108-a67d-4d86-83d9-5bef4f91aa89@jasonjgw.net>
User-Agent: POP Peeper Pro (5.4.6.0)
X-Provags-ID: V03:K1:LMplEvcM5/dzg/J44tVUV6RSvkAyZ58vWvMBvL1kALGCPQw6wtR
 jPx0US0gQo/nPFsZw7doITdwiyUPy+ECyXrg4crdpJkOrbX7NH2YTyEeEnT/XwoaOJTspw1
 Ckyhxk0FruFNQ/WrX5zRQzKZ5glFc5nRVD4aAp0W9ja/myyXOfGsx291LNQBdFmiHVD7DPA
 uGLzZuvetf/vhVBwoLPVQ==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:X4i8xLZM2a0=;pyp+hLvP4U+60MyBighsWn8sPQk
 WPAGHj2j4CwQU3xz44yqk3rIXQivnQCemsUw5mE9jbDPCL9PEPElRODSM8/9nygK7+t+gN0qW
 Vlej9aaQM6eefoVRjtR/cO8mu9pKDASWnDeONQjM7ndtX6RYBF5lAWpXDQt6ls/pw9vhXvceG
 Tfxf1Y6tsgGMibydFvXlM/s56yqa3gwYK0Hhuvx4QztnmHw/HJrVIuNluVq6B2WOoaJVF7vbr
 ZPmb4FDmo1ttZwetObx5b+acH3b+SsTZNwSpuUGytQwVIlsIJezzK/790os8ZVxwoj7IFMJYd
 d0Dtai680VbQEzhi8o+U6PYMMEqjSxB9a0OQoJ5kAKLO5If7PC12u1x+G/+I0PrhpxDtjtYVd
 sKykT7vdHbg/VcIAO5W3HQRxky9s2wZhMpJEIftnDKRdHnArjEbMCQDjeyCKLYspzP+dywOW8
 zWidnJ+0pdPgOyniO0rzadMrAwrtA6KzmseCq0VaGpT9AfuRj5l+n0NtOf2ssdOfxMAZsMVJI
 oME9fwF0NbxLOYDqclDXlreZWYPA8vbLIeoLSszTSKqNM+mYrl2VtdozDh+0bgglSyChFWcyw
 Hz5rSGdMshswZIaTldJJkD3adjP8lPbxrSeM197zVa+ohp4eOAWowTh4OJYoFeFSsfBKDUIyj
 v/3UHgu9DgU6Wy2S17Jv3EbIigT/stpKrhDN4AxnssenErWIZjii63kyiNvTAfc6xQncVHGzW
 rbyRFsBxPsLRik7UiNTE9HqVsrq5nUemidY7UfHHwnAsQEMX1Pau+0QU+EmIHOvWELpuDTJeg
 /T
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmx.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rob_hudson_3182@gmx.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rob_hudson_3182@gmx.com designates 212.227.17.21 as permitted
 sender) smtp.mailfrom=rob_hudson_3182@gmx.com
X-Original-From: "Rob Hudson" <rob_hudson_3182@gmx.com>
Reply-To: "Rob Hudson" <rob_hudson_3182@gmx.com>
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

Or just set it in efibootmgr.

----- Original Message -----
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
To: blinux-list@redhat.com
Date: Sat, 28 Oct 2023 14:48:21 -0400
Subject: Re: Dualboot remember last used os question

>
> On 28/10/23 12:02, Pavel Vlcek wrote:
> > Is some way to tell the UEFI about latest os and when restarting, it
> > will restart to lastly used system?
>
> You can achieve this with GRUB, which can boot both Linux (whichever
> distribution is installed) and other operating systems, including
> Microsoft's.
>
> To set which system to boot, try the grub-set-default command. In
> Fedora, this has been renamed to grub2-set-efault.
>
> --
> You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
>
>

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

