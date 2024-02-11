Return-Path: <blinux-list+bncBCV3N6GOXMCRBVMVUOXAMGQE6GAIMPI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id E125C85095E
	for <lists+blinux-list@lfdr.de>; Sun, 11 Feb 2024 14:25:43 +0100 (CET)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-42ab8a525aasf26063691cf.3
        for <lists+blinux-list@lfdr.de>; Sun, 11 Feb 2024 05:25:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1707657943; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZFZ2tgLVdnNUAzbtinIAlKmZE6CSzcT25Idz3DuY4SFJuxbO0bfkgiFwDqlVge1ZQZ
         439tQDtA8jMI0IpMFB/8uXUuqQkiJ58x0MG0u/b0i62jlxchc/ejI4dPNmml9I1e3Ejx
         20Tl96XC+rrQcm90KLToCi42GNhfPu0dHFklg/I/VuIIIYjEkDrpf0F+Sl8n+tBnLibw
         RJiYAVI/JGzinoB80ZntTiiJhRRkLVuosrg1M0MNP9cA5uBOwBYiX7lgtqaPknYqVE5O
         a8UHCo8xBFZDAwyCf7m5RPtoWMSn9ckhJbMCGPDzgBiPrhg5Y3pQOu6F93uaThMCP4dY
         k75A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=GD2F7DEY/RVfMV7BjoRWRxGj9zsAY9hbS4iOY2Y+Fhw=;
        fh=7REhk7mRIcCV6QqOBStqI3AkDDu/kMdZ2xDOZiJq4Ek=;
        b=R0Q0ZXKHU26JvxBWL/6fQDfZ22il85hKa68rys8vP3EQKkckRflV0lDcGKjt2DZ2J5
         5H/o+8WfIrtp9mQNokbQN7CrVZQtmr4UPM3FkGXJLeES5jejdaGAK8u+JrP6pocEH0jO
         ZA5KFUZe9WvHXFEjQUSWxp/UnSEvuc7QUvsNNYAfrGWy64bQWeCPI+JhVASXqsihsWy0
         +iIvvH+TyX8b+tmtCRCSnXV4sb/H719YDoYn7wsouWOEyW21yUkMLU2FGKSN3K/XDtUN
         uvvupzs280OqUP033VbGTmZdpaHS4bqbQYNt3jFp6D2us2N3iu2od5LlfVvj13b8dbab
         8Pxg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.17.22 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707657943; x=1708262743;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GD2F7DEY/RVfMV7BjoRWRxGj9zsAY9hbS4iOY2Y+Fhw=;
        b=M8yvvFwVgB1OyTvw1gQW/7SNxB41kqXdptmLHIlQSolZ23pNeQ/UEaJSITJC0FSTnE
         57UudTP6H6HMcbqgUZ+6XuMBWEess9XxmM2puawM1LNQID0JGQk5/AaBpihvkeqz2pMS
         WlhpNY+t9OlFQbJb55PNjbUYAuOhzjAts+cPsUillw5xV+GoABhQm2mM+ff/VRJzXYL2
         6joqA/W1Yoos0cMR1mBjR5y2MVzzjSHP5ppNrOl1yZmhbcvQkhmUdVVsX51Ydo64fBPo
         TLg4kNWb6uiiM6opVN2SJENmI1nKuUOiUSnUpFMGj2z94xYoJnhmA9FrJ906pfI9oWLg
         ER1A==
X-Gm-Message-State: AOJu0YyT8RPGD+7wkImBSrIPDCbslPtvonsjy/Kc0KOogrcUReeCsTsT
	ix3b5YtC+6Jxg22t5GvR7yJpy/IhhOv5cr/CBub2gTsHWapq/t4Lfnk7Xrdp4o0=
X-Google-Smtp-Source: AGHT+IFZaDMKylqq3BuAILKXCmHfyLG96zuy1WtdKqTGtFkvf1kxJYy9qPwWcr4kAk/BlgMYl8R7rg==
X-Received: by 2002:a05:622a:11:b0:42c:6dcc:4d4d with SMTP id x17-20020a05622a001100b0042c6dcc4d4dmr3323862qtw.27.1707657942358;
        Sun, 11 Feb 2024 05:25:42 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:590e:0:b0:42c:629b:e7 with SMTP id 14-20020ac8590e000000b0042c629b00e7ls1836135qty.2.-pod-prod-02-us;
 Sun, 11 Feb 2024 05:25:41 -0800 (PST)
X-Received: by 2002:a05:622a:1183:b0:42b:eea3:7edd with SMTP id m3-20020a05622a118300b0042beea37eddmr6946890qtk.62.1707657941468;
        Sun, 11 Feb 2024 05:25:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1707657941; cv=none;
        d=google.com; s=arc-20160816;
        b=P8XtGOYTd3VHhrjBooF7F8SQ5ManMx/ijgPOzoXFRfhbhOvy0TIYGH4muIWovWwoou
         tAKX+aFje6AFOLcg1JApR0ah0KXm8eGjyQ7Rk3mGrk+JIS14m3EjR/IwmJzZPuYU5Ho8
         zuWHHzTYzv4CBI0BP0Hbg9pBliWj1BhHxvOjUxE4dL4bVQ80lFE0BMyI0zFI5HK2CxdE
         6Q5Eqk152efQwHWbHPVhzYc0klTbCQKcEHx+TCVDH1FYaELk2Uus+aiyozttvaq96575
         Syxa+L0mS2Fmr5V2Qd/ZUQFCWn+tzhTI2HIrm4d833TVP5GXljQTesBTXMCEVmlEHcB8
         GqEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=MRTUisWPCkzfOe08mu+2LaNbqlTYHZIoRwImgJibh68=;
        fh=7REhk7mRIcCV6QqOBStqI3AkDDu/kMdZ2xDOZiJq4Ek=;
        b=dEzCKEhycdaHeUIagYuFI9eR5Kll7k8KiMCEi5bxLyWxNlXj+rsQmDiflW+ay44jmd
         lJykXRBlM942nUbYIb7Ftr0JKm4HVKlwsvG4FWce6d/JjMWiLaXQogGg9o/Ou0sFD74z
         f7FwVmb1RPIqHMEeR9L7VCL1V+9K79JZC/xVvzKx+RxRUC0M9fdoVLq/dSpFrS/3b0ny
         tbuE53Pf60xPaXBjNa01efERKD8U0zVbSW8jI9FG9J0CZuIXc7aQdZLf6i8mTFG3A4qK
         OTof4JuNf6Cxekrttj67km071HEIJrzOydBp1ZnolId22X3CrYUDi7V8Xzb5k+mBDWji
         IbTg==;
        darn=gapps.redhat.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.17.22 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Forwarded-Encrypted: i=1; AJvYcCVn5PCEzfzWCJ3wQHjS9H1H3EMQyoTXIZNNrmHNe+YECHysszAifKjxcqUHYhKN4hYRZLECf1rkgKw0LmG9Bu6/ojXs4D2NN4VttkOH
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id e9-20020ac85dc9000000b0042aad1f71bdsi6310329qtx.618.2024.02.11.05.25.41
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Feb 2024 05:25:41 -0800 (PST)
Received-SPF: pass (google.com: domain of kyle@gmx.it designates 212.227.17.22 as permitted sender) client-ip=212.227.17.22;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-528-4dp6dcbqMhOIwHD_WItsqQ-1; Sun,
 11 Feb 2024 08:25:39 -0500
X-MC-Unique: 4dp6dcbqMhOIwHD_WItsqQ-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 946981C05B0A
	for <blinux-list@gapps.redhat.com>; Sun, 11 Feb 2024 13:25:39 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 91082492C1B; Sun, 11 Feb 2024 13:25:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 33A47492BFD
	for <blinux-list@redhat.com>; Sun, 11 Feb 2024 13:25:38 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2277E85A588
	for <blinux-list@redhat.com>; Sun, 11 Feb 2024 13:25:38 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-423-Q-8juQTTPIKzSeCoCsBzVQ-1; Sun,
 11 Feb 2024 08:25:35 -0500
X-MC-Unique: Q-8juQTTPIKzSeCoCsBzVQ-1
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [10.0.0.20] ([136.54.145.217]) by mail.gmx.net (mrgmx104
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1MmlTC-1rAJ9H0W0c-00judU; Sun, 11
 Feb 2024 14:25:33 +0100
Message-ID: <79c80d6b-ad0a-407f-bedf-ba0651f3615c@gmx.it>
Date: Sun, 11 Feb 2024 08:25:30 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: not yet done
To: Jude DaShiell <jdashiel@panix.com>, blinux-list@redhat.com
References: <4f392189-5fe5-57fc-2794-2cfd346bfe8c@panix.com>
From: "'Kyle' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <4f392189-5fe5-57fc-2794-2cfd346bfe8c@panix.com>
X-Provags-ID: V03:K1:PSoCChl1QBoiRBMp5mABCIGZahcGfgez9ZCe6q6Tlw82UAHYqXg
 Sc587lezVpYZw5NtGZrAv60aHylNxSj2c+G/9n5su4x7kEoPlB+MM/BVuCz5o0K2YbVrwqR
 i0v1QhzAurB3NZ2e9KsOoEa8YFSAt5LvC8wg9ccENjm/p93STZ1Q50PRNB5J+GgTRDGJX4i
 hqeAwzvs7GJF37XNnT34Q==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:LEzx5nkUVNk=;o2EK/cevIsvCHqUPpH64sxx1Q39
 XjyNLpd5dOcN6+TT8G2xjXouq8NrJ+5HfBt4phe4QJ4/ICoGsAWnbZJWIS/QbylogfWMU6oeP
 /KwPttv2DYJYgp0QNPn+V1B89is0zmmsGR0HNWB70O7BSlU6kFvmTHFXU4eFqfaKKpdvZyxaQ
 DYPhq9UEoQZoNlow/F3GHh5a2p155MR9qzvyBwUBN0n7ovh1GH3BEhRAvcEhDcAFAk1esQtUu
 ImAq9qm0dl2oxgD4UYHzlxNvTJBA/iYRv/jC8/JrgwNK9ibJ3FL5mA4k/gj8GuIMAk9eygNvL
 cmfmEEXnWA7cZ7VbL/dqlga8utLapyk22hEldAls98urPBijbLwsLTSIgcBbhrps5qOqh6uzP
 7oWDz/bicWBYKS3MzFL9Zwvf1aKcsceLY+0Ww1ZvqcVfVbr5xHYoKByKyjyM6R3YcYH6o3sql
 DYlDe5NDMN0vtxy+d2F7d1+2QE5RhOOvYWADv1gg9Gnndb0ZRnd2B+rn/W/KdJ0yukEAONzXI
 r1yi+rpqYVOLrBBYcdicb+t8+y8GEA1MlV38Yx/jDKzzwG1RRvP0NqolvAcL/4sCFQJb0ZFpV
 7J9VX4HS2OwzLu65P71DzRyBtLttdOkt17N14dXPE9dUukMaCUYZt3Ju6kJHzIC9Px8U/7siS
 cG0WuE7NO1UOxp6hPg4QU5I4NW13gQ6Nh4G8cVGddbOBzr7+Wqm+/B9xBIqP8446r/tbrmi8O
 Mr3O56EsTWvZy7gUyxaKGG8O3CYGljt1xaE4zfYYDsmS68LXbE40b6FeHKGewYmAgefmOub9Q
 jlo0hc7opb0wDN4cVc+2VRP1LyTUPB6XdO6OIVmvpPHWw=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmx.it
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: kyle@gmx.it
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of kyle@gmx.it designates 212.227.17.22 as permitted sender) smtp.mailfrom=kyle@gmx.it
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

I could be wrong, but I believe the reason something like this hasn't
been and probably cannot be done is because it is possible to patch a
file to match the checksum, but there are multiple combinations,
especially on large files, that can produce the same checksum. There is
also the problem of the infinite number of combinations, one of which
would have to hit just right to make something that will match. You
would have to find the exact bytes that will match the entire file, and
that could take anywhere from an hour to a million years to find the one
that hits just right. It wouldn't be as tough as breaking strong
encryption, but it is very difficult for commercial-grade computers. I
think a quantum computer can do it, but those are not widely available
in 2024. Even today's AI cannot produce a binary identical file whose
copy is broken in some way without having the original file for
comparison. And if you have the original file, you may as well just
recopy it to replace the broken version.

~Kyle

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

