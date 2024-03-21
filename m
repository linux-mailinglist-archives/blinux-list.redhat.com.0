Return-Path: <blinux-list+bncBDYPVTOXSQEBB3GO6KXQMGQEPDA2WQI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f69.google.com (mail-oo1-f69.google.com [209.85.161.69])
	by mail.lfdr.de (Postfix) with ESMTPS id E5EE988628D
	for <lists+blinux-list@lfdr.de>; Thu, 21 Mar 2024 22:32:29 +0100 (CET)
Received: by mail-oo1-f69.google.com with SMTP id 006d021491bc7-5a486a8e1fdsf1230601eaf.2
        for <lists+blinux-list@lfdr.de>; Thu, 21 Mar 2024 14:32:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711056748; cv=pass;
        d=google.com; s=arc-20160816;
        b=S3kqrmSC0w0PdjdbVSi60BkvnGEuh22MQfbuHIwyibKad09x70pyonGTJuohEeATnV
         6TIr0K5Zdyjw9Oa9LSRaEyCquqCN5Aqq7KlHgF2V4Ch2pK685dftYLa46s2lRafYc5yS
         gSO9x5rSySl+JlaGWXOB6fb12LpufVdRitp5VMoaoF6RKw4qlDVRi3W0a4uB8o7RwheR
         MwTgyu9O8qQTw5xFBHvJ9Y6wIDww56TULqWkDZHa/Zny6HM7GxX9b0Xo9HHzuj/9Hi2U
         7o2h1CL2yGTvUkzqDr4X5BqXWviJxf3t8QofcDXj0p0rSh4eH37+fLb9DsG3Qyu1PVnN
         sY6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to;
        bh=v84j/TQ6HxIAR4YCQim7I5dMz25o2G6RVH2BMAtyKcA=;
        fh=b5krkSz8WA2OxRJ70qafv59cfJaEJiaVx21NT/oU04w=;
        b=dkQRk1CJG3oy7ToxdOTmCqtMbjQFyLq2WfXmuxhVXCtWdj/jYoczBVWSy0jPFekhh6
         FQ9PepW4ZQIGBfoKY9YpobkNu9ptL3CMMvHNO7gTRQy3dc8iZ9ZV2GmbK0HPfNOByuwY
         PMmHmDydYXTpDUrJJcBM1mo7qPUhMqZkaWKSKR/6V+LSiGrttS5evqdUH3aCaysADYaY
         r8q/BtzbDVmeYDbBRq4i/PALmh8tvZsPc+D2CUX7BhW67+cUuonW5z4sZ/Crh66Cnf/e
         gkQ5zewg2SXatlrdQIyghzgLT3t6Hvc8xaHPqPPQtoPJXDeuBEZisETq0KAfe7DxvO1v
         GQMw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711056748; x=1711661548;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:to:from:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=v84j/TQ6HxIAR4YCQim7I5dMz25o2G6RVH2BMAtyKcA=;
        b=MLo0CHNukBx0VF0tBKYozVToaDUUNxsGUcKqMYEYI4UbngPQ16+dNufUJVzyO5ApiJ
         n2PKXdwLU1Q66V+uYT3hYvAmRUwRo6BO609dxmnVkwn605T+S+JAZLUHsuwMdv2ig1Rn
         kMe+tNw+9N/DWFINDghDD9+ar9IqT6sbpPcv7qm14ot6pYr92xcIpYN/d3DCeSz4xts1
         ljj+qXECxN414Oh+q4c45gFSkqgVJKAPNZNZtJctEpriea6z1tV2DtlpKaMKCY4Od8Rl
         8FqDPCQDDOuIeYGmeMXLE3ll/nyMP2E5rk+siLAI0LcPDd9/5jBIiWFi8Kn8bthNiXE5
         gFIQ==
X-Forwarded-Encrypted: i=2; AJvYcCXNLJpsdzer5ebXmYjGReVCRP/Lu/YN66789FA8AUZdwAIM5O3FeVqrYKG+R9BGRpvF9S2Bwy+debWz0LaVPeiunnMY1xrnZqd7
X-Gm-Message-State: AOJu0YykZ4xQl+EcRTwDbyDyjkEHM6NJ9m8ri15r/RLYSzZ4fOXlAm3H
	xfsWy0QOvG6U+b4y84SjQyC5EKkiyfiPYTfeag7+4o5/dT+8f7kk0WoPu+q3/9I=
X-Google-Smtp-Source: AGHT+IGGt3wx8dPmzGYHfHdlOhhELolp4Qk9mraMhKm1SMqodi68UUkOlS7ScItiNAanOqSHP+LNiQ==
X-Received: by 2002:a05:6820:1387:b0:5a1:17bb:40d7 with SMTP id i7-20020a056820138700b005a117bb40d7mr997359oow.2.1711056748419;
        Thu, 21 Mar 2024 14:32:28 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a4a:b44b:0:b0:5a4:905d:743f with SMTP id h11-20020a4ab44b000000b005a4905d743fls1358328ooo.1.-pod-prod-05-us;
 Thu, 21 Mar 2024 14:32:27 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCV41x0NVIp97eNB+zIOTDda2MSdR3Ze5XEjP9UBLafmYdyUVgxYshUUNEW0t7oJEiLWSOPOoH6FQ30CbXne7hDfa64sWku4OuzLcHJL
X-Received: by 2002:a05:6830:11ca:b0:6e5:277:1af9 with SMTP id v10-20020a05683011ca00b006e502771af9mr523490otq.17.1711056747615;
        Thu, 21 Mar 2024 14:32:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711056747; cv=none;
        d=google.com; s=arc-20160816;
        b=Bq840xXtex/TEmx0Lu/fmDbBZitxS+7Q05HK8z02mLyFlDAJyJVRjGNGEPdZ8TaH+7
         becbHWD+2ENlWb5Tzzmmwyw1FqSR/JX68rxJb/szMXy5azjB+DhIVsk7HDKq2dvCevE/
         15+1RjJG7qqgOIsLhN2p0qveXPHwr6NVnK3fPCm/owzzzFdqOz0aySLeGKjonjn+YRhy
         jpij+cR92IiN3qg4VC5JcGBh10XJhppWD9/ctwOXOnR/rL/LAs3WDgmkqL8sY6sifB26
         +lpJu6JDW561kE6Brlrf0BDgS3SaN3dhTFi8pEyJ4xW5PzlVfH0NPVO6MJiFQvHWGYau
         lnHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:to:from:date
         :delivered-to;
        bh=VxLKaKITS9fYArozzafnn+N+OYqgtRYKjnWjJ/iLFJI=;
        fh=/O2xuaL5/n4g3sCWDKPTglQ7kqne6f1NeqGpOqsTg/k=;
        b=D+MjzomUYubMe19AgJ3Agf7HOfn12BzHmDIDZ4UjH7NMxfxCURMVJhi4V5WgG958qI
         +a7+ktlhq5lV0W4V3C6aYeXf0+mYuH/aRctkd2GRYnUGlmy9UR5HXzQHrF+kz/LaSkCX
         lHKIzbJI9YTo7PpwdYjSwQtbQIHSsDbiw14DtjBOH9zW7PVgXbMY4/MYw1jzHuaJ7tI+
         gU/z6AElbzzXaJdH/EmzgZSUnllhgU3XSr9B3ZxrYDUntzuyjs8tLdF7LXwTn4pumi+1
         Ged94KX7kfPsthzFBajVH7kNxbtUOQBtytL/beyU0swgHOoj5K29Hjz25Al7+HpOGCUC
         vacg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id u6-20020a05620a120600b007886635a68dsi631523qkj.536.2024.03.21.14.32.27
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Mar 2024 14:32:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-511-Vy2FgozSPWyaRhv5SNGWsw-1; Thu, 21 Mar 2024 17:32:26 -0400
X-MC-Unique: Vy2FgozSPWyaRhv5SNGWsw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DB805800268
	for <blinux-list@gapps.redhat.com>; Thu, 21 Mar 2024 21:32:25 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id D87C81C060A6; Thu, 21 Mar 2024 21:32:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A13231C060D0
	for <blinux-list@redhat.com>; Thu, 21 Mar 2024 21:32:25 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 518B2185A784
	for <blinux-list@redhat.com>; Thu, 21 Mar 2024 21:32:25 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-688-8RzWCoJMPkKnDdZakLyyOQ-1; Thu,
 21 Mar 2024 17:32:23 -0400
X-MC-Unique: 8RzWCoJMPkKnDdZakLyyOQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4V0zFL75nXz13B9;
	Thu, 21 Mar 2024 17:32:22 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4V0zFL6xRwzcbc; Thu, 21 Mar 2024 17:32:22 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4V0zFL6st6zcbV;
	Thu, 21 Mar 2024 17:32:22 -0400 (EDT)
Date: Thu, 21 Mar 2024 17:32:22 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: Martin McCormick <martin.m@suddenlink.net>, 
    x for blind general discussion <blinux-list@redhat.com>
Subject: Re: crontab -e behaves Oddly in Bookworm with Speech
In-Reply-To: <E1rnPjf-0007zA-2j@wb5agz>
Message-ID: <22364eb9-4a30-6eb0-11c3-b4de618e0325@panix.com>
References: <E1rnPjf-0007zA-2j@wb5agz>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jdashiel@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
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

debian-accessibility needs to hear about this problem.


-- 
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Thu, 21 Mar 2024, Martin McCormick wrote:

> After an upgrade to debian bookworm, things were working well in
> the command-line mode until I ran crontab -e to edit a crontab
> file.
>
> 	I've been using the vi editor in unix   since 1989 so I'm
> used to how it works under the command line and it has always
> been surprisingly accessible even under very austere conditions
> so I thought nothing about selecting vim as the editor in the
> crontab app and then I tried to use it.
>
> 	I'm not even sure what it is that gets turned on when
> using crontab -e because up to now, it has always just ben like
> any ASCII text document.
>
> 	Now, the arrow keys do let one step through a line of
> text but the j, k, h and l keys uselessly let us hear cursor
> positions and not even that fully.  We just hear 1 2 3 4, etc as
> we move to the right with no feedback at all that identifies what
> characters we are passing over.
>
> 	If one presses the carriage return, we uselessly hear
> more advancing digits and, if we insert characters, we uselessly
> hear things like 1,2 1,3 and so on with not a hint as to what we
> just typed.  This is totally unusable and I don't even know what
> mode is turned on when running crontab -e which used to just run
> vi on the crontab for one's shell with good feedback.
>
> 	If I run a command like
>
> vi SOMEFILE, I get perfectly normal behavior on somefile and can
> edit to my heart's content.  When I tried to run the botched form
> of crontab, I ended up somehow joining some lines together and
> didn't know it until a cronjob failed with odd errors and I
> simply ran crontab -l >newfile and then ran vi on that and all
> was clear and obvious so, if I can figure out how to lose
> whatever that mode is that crontab -e turns on, I will be happy
> once again.  I suspect that the text characters are immediately
> being followed by those darned cursor coordinates such that the
> last thing sent is what we hear but whatever it is, I have heard
> the same junk output I got once when I accidentally got nano
> started on a document some years ago and couldn't get out of nano
> fast enough.  The only useful thing I found about nano was that
> ctrl-x triggers the prompt to save everything or not and I answer
> no and make sure vi runs next time.  Another strategy might be to
> turn off speech while typing and lose all feedback but that is
> extreme to say the least.
>
> 	Thanks for any and all constructive suggestions.
>
> Martin
>
>

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

