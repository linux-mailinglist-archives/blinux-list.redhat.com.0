Return-Path: <blinux-list+bncBDM4LSNO5MHBB57TWKYQMGQEKKDF73I@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id C9D808B4526
	for <lists+blinux-list@lfdr.de>; Sat, 27 Apr 2024 10:40:24 +0200 (CEST)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-43a6d1e7708sf24982951cf.1
        for <lists+blinux-list@lfdr.de>; Sat, 27 Apr 2024 01:40:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1714207223; cv=pass;
        d=google.com; s=arc-20160816;
        b=dH06yMopI19uLAJU/FGQsQRsU/QAkSjvp7DHCqkrQRfa/uWlKQPd1JjqpUgJu5L7vL
         Dhft8V1pJTYMiVcvJJVssblnFUQzbsXqwFG0cgDJVMrmipkuVLYh2CDoYF3y9KYvLqgF
         aUCUTA1x5n+Rr9jTxLOuMeu++6jvMXdLpjwJaQQyahDAAQcHRA0M+mPH+dpMpcWWJ913
         y4scOwMdBkspzZcCn+CIZPt0pDGkeexiX5540bQraaCEI8mwkal27WGbP9gtaFGajOzM
         nDfyiDczHGjXy71FqIJ58P4lpjveOYINcbqyyCH0BaGjYMYIFpYYIzFfGZ8lPb+iTjQx
         ++og==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=pLEZWFrQ4sxQ6gzu8YWXj2XMtkX41tLg0Yotftk/42c=;
        fh=7jNx/OmdT4Z/8/tuE+t2I2AmGdX/V3AyCyBQKZh/5Mo=;
        b=T1THsK/N1v25mwv52iW7oqIze1LI7I+dZOcJt/65xh5dinnSljK6yCpt4ILV4xTksA
         Mx9VwZH1EQncmZ7J9ONmaExoR5ROA8c2gAU3xKT9FdhcTyjhQJ1Dqi0W4yiGDvbVT+f1
         2HC8JAnZPx8Nka4tM5lGTjY+yLFwzxpP4tdq9V87x00UtrZ3Ap1qLR9v1y+oQtg1H66E
         ob2ReziqIsqBT94IFBuyFz0zNjVxIyB2YZeHY7Sdr7dvel1GBlsL6seh8RMz7hO0RHUm
         QE2RT+HoDPlIJQ1abDIZwS53BWNBdOPLELODzE3bkhta8YZnMbee87n6IH0PyBK+TgQ9
         ba5g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.200 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714207223; x=1714812023;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pLEZWFrQ4sxQ6gzu8YWXj2XMtkX41tLg0Yotftk/42c=;
        b=d5BaMdD+CkQEhySoc91d3drKXjRP9D18sLCZAyWvUBj01HBU1rsKmyYFE9i1yySxoG
         EnqezxytbuFRJzZZoiGUAinlxXmMVILKbiwSt1muW6a/WXe8cOz4/X9xsux0yyT8nu91
         s8NpPz0WLi9BszZzjGogkpEpW4D/8KiOfFXJbicTuuL5Yq/cWmKLTBLwamHKLKSafNO4
         oZem2Ckwsco8kh2/VBrkZGpWxTNkAPuVTAo5DiQHxEpHeF9cJNTD75QbnFmG0WSulGn9
         ajc05jzMcpkV+8kMl6U6/vRdvHbXUeXxJHr5mbUE6a3Ogi7vvA3mVYtfwCXV831yPIhh
         6rsg==
X-Forwarded-Encrypted: i=2; AJvYcCVRg0Khi7eMS6de3bc5WLDszpHYakdr99KhtYkeGex+a1NsBQz6MrNIFBK7AvsJ3V/p3cCCbzolmStMZA3k4HLPHodtaQ4reppG
X-Gm-Message-State: AOJu0YxUuT++w2FBnOOb/2ZkzZ9UgIK8GBPiFXNZvVvYlOIdD3VBhok5
	+4wAKTH+VxmPXDA/HKmGKRZ4vtZsElkoOj7bOc6D6bzn+fE3vQuafFBXhsUttSc=
X-Google-Smtp-Source: AGHT+IHMJJ9xC4wPrALYVcIUkCvTVX7EtpKwyb7iWh9VsNgSFFiWKsxxEj7PfOwyAuGkP458DK5Kzg==
X-Received: by 2002:ac8:7d10:0:b0:43a:71d7:6270 with SMTP id g16-20020ac87d10000000b0043a71d76270mr4034258qtb.35.1714207223579;
        Sat, 27 Apr 2024 01:40:23 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:134a:b0:439:ef13:a544 with SMTP id
 d75a77b69052e-43a3aa5513bls40807801cf.0.-pod-prod-04-us; Sat, 27 Apr 2024
 01:40:22 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXgpIR6ZPgw3/17NTaYlHm6bpXnyjqC76R9x/IuZbUJFo3Tv13dCrQNaFDMQQaWYZMk94H5iQxLkwRbGkeScWTkBewdOmtzQ5RJOYNF
X-Received: by 2002:a05:622a:589:b0:437:b4f1:2360 with SMTP id c9-20020a05622a058900b00437b4f12360mr5439956qtb.49.1714207222791;
        Sat, 27 Apr 2024 01:40:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1714207222; cv=none;
        d=google.com; s=arc-20160816;
        b=DvvJra6GmMtffuHNa/Qm5gTEi5RmcDlVjOVfIdMKdWzJSn//0DYOv8kziTunoCARuf
         j5fB/XTtP348OzQSX6LwLTLXhFcThXnnw08XSt9Djgg/Zp3Mz/xBURsgZisHOMRVi35R
         +a0CMK5GKgm8eJo3p5js70eGbsj8Q+KTVHlg2rA4ydE8weJOuJ24SMrXp6VwmsuThTQk
         FCq+2sUvnUdaSZZJ1iG0MSKaG6jf2c/LtYh+ifMAoLqfiNbLes41TYgiHnzuEpDdNyFh
         gd31VanY5uCMFkyAGN9CxI17k526XcXJc2RI4DwzJ4EUEcKNydQliZJiukklD0TDftsf
         wWfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=D84qBkXKc7prJoZ6945UFyi8KDK8/WDLWcGrMYRQs7U=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=Om2VVBUjSPOh3HzPjV4rHiWfoDGBe/aVG5/BdAt5fGCxvM6mzV4QOIU+lXLZhHC/qa
         e4CroC6TWqScZFyZGDbcbcbYouSKyQKGmvW7+l7sNRVnbsS74bIfYxnSJs/1imxDdM9r
         pWO3CkXBfRl7gTvueTGUp/0ERb64hdSmkzXmBq41/mllyZij4brybIoQk4Ikd3emxALf
         2umd2gDMn8fsDENhzf+3WpaFAac4a8w6khPd58/LEJj9XWQdEPZWV6LcHpKycoRZgXyr
         cONq5Z51br1lCgF4ZBMR8H2oyGuz84DjpWLz+cZxjftgOeXBI9pWPGoJVsG8egM+Skjr
         ALgA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.200 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id f9-20020a05622a114900b004390ae6192fsi19418830qty.670.2024.04.27.01.40.22
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Apr 2024 01:40:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.200 as permitted sender) client-ip=74.208.4.200;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-340-qXaGAgbvNoKA5-I11R2JmA-1; Sat, 27 Apr 2024 04:40:21 -0400
X-MC-Unique: qXaGAgbvNoKA5-I11R2JmA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 149A38001B2
	for <blinux-list@gapps.redhat.com>; Sat, 27 Apr 2024 08:40:21 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 0E1AB1121313; Sat, 27 Apr 2024 08:40:21 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C93B61121306
	for <blinux-list@redhat.com>; Sat, 27 Apr 2024 08:40:20 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 74955800CAC
	for <blinux-list@redhat.com>; Sat, 27 Apr 2024 08:40:20 +0000 (UTC)
Received: from mout.gmx.com (mout.gmx.com [74.208.4.200]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-593-49jr_x0JMdSBeUfqvCIgxA-1; Sat,
 27 Apr 2024 04:40:18 -0400
X-MC-Unique: 49jr_x0JMdSBeUfqvCIgxA-1
X-UI-Sender-Class: f2cb72be-343f-493d-8ec3-b1efb8d6185a
Received: from johndoe65534.mail.com ([195.16.11.121]) by smtp.mail.com
 (mrgmxus004 [74.208.5.15]) with ESMTPSA (Nemesis) id 0MDiX2-1rtQzf0058-00H5G2
 for <blinux-list@redhat.com>; Sat, 27 Apr 2024 10:40:17 +0200
Message-ID: <14e16ff1-0536-462e-9cc0-495a58e54aca@mail.com>
Date: Sat, 27 Apr 2024 10:41:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: folder containing orca
To: blinux-list@redhat.com
References: <7F1BA135-FC08-4486-9461-F6E6DDCFD207@gmail.com>
From: john doe <johndoe65534@mail.com>
In-Reply-To: <7F1BA135-FC08-4486-9461-F6E6DDCFD207@gmail.com>
X-Provags-ID: V03:K1:sUXUrULZBzUhNt+Hvj1Rb6twS6VJGuhpZOzG8Tfvm2NfmcQlfLA
 /1eNZ2Cs2n7dN0OQ59SHVC0EEIaI9N7JV/yIAJo0ITjYCEqwp5QnonprQeoQmyJtyhZAc1k
 5TlEjaSfcCJd5LkLDfz7OapoVJ+nJ+hQkfVyiYWpx+CRoO39ujQWOcXec8RleK/tlN/3FYh
 baZdqPg+f7qOnvqqirsCA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:punbkH3kz0s=;chBEet6zQ72Eb86YEFKmLrys6K8
 TATeNJ0cxRws6lhrR7JaYcbY6R/jMkDybTEWhXi6iji1pXO+uyKOIcslZ3vmsPsTakybdVZwS
 iDg4CBNkNwoVTXNigTkQ7mvdlcrYqTSIrfaYCKhAO4IJlK9pBIdtawIUwaNApi7MkFl4RJof2
 LkHk+B9w2/z3bLG6KWrRMOgszLD5Px1YLta87EcMjevIMMxQmPtw17pJz878sNpB6RnuDIajH
 Q2SCkWvx7biPDBgve+lS+m1FqWZ6vmMydzxYxvEUZU2g7XP4nX6q0dEwThUWakf872dMimFtn
 cHUFcTuB6CYLLlJ1TeONfOrd8QtC8zcXhhH2BPfa4opZ39xLRTY4TTK5R6RitgWFsw9ZrHW8Y
 z9MjK8X1VbGVwpVpnunP7tNPGjjIcDrZhfvkL9KkKvrFdPJJ1DZLrzRpQLypWCae0LXGVte9U
 aEQ57T6rDJ32StaKh/EH6LvhR+Ua8SLAvBcqz8iqZV4zxliSFs5CuNI0pNDuqK/FW9/bN5uxZ
 UpBkIkNve2Nd1hupzeJlnSqdAyBnN4K/rdFwCvGWZ40R+SLBgn3RoFczvkIICWas23Rq6OcFZ
 bF8ARDjp4OlJdV+FfkW6vhDAdNcKHK8cch0YSlF/QWRR6vPz3FqlmS3IdtLCBNE6GfH7tzzDd
 +NfAKwfNvQjkrwS+0SH7IJQ53DaWAjdBhFT/rOza1iau8oLrO3BsSJbJq6JWlTnmAsM2vhWHC
 7Jzn1hjHIBdBoF1tjb3vqEXi6hl1NCV6n2kndHuBazNtt2ecP4KU2TXyPCcALEWekWYUM8vxV
 hXWF5scqqWkGqqY/0V2jAPN+Cibeon3i8yujnLatIb1I4=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: mail.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: johndoe65534@mail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of johndoe65534@mail.com designates 74.208.4.200 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
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

On 4/26/24 23:14, Daniel Crone wrote:
> Which folder would contain orca?
> I will go in it, and try modifying a Liblouis table, adding contractions.
>

$ find / -iname *orca* -type d

Should get you started.

--
John Doe

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

