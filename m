Return-Path: <blinux-list+bncBCHY5TMQ6YERB3NYRWYQMGQE4QCVQ7Q@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id D22128AB9F8
	for <lists+blinux-list@lfdr.de>; Sat, 20 Apr 2024 08:10:55 +0200 (CEST)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-69bc71365aasf36817766d6.0
        for <lists+blinux-list@lfdr.de>; Fri, 19 Apr 2024 23:10:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1713593455; cv=pass;
        d=google.com; s=arc-20160816;
        b=NxhcVLRQ4nXRG2eUaENoL4dkHv8A7WH72wR8x2ah/abGzmHCPs1F+iZn0YtDY9kRpu
         IPyTvS9jcHe6LzhtDyEmfvh3isaNMfECCH0rrOHmSqsWmR24l9s4VgsRZYJGt1NpHsW8
         klJqb5oAn7z4e8SqiFCKYC9oLbjwbV6vG0S5wDsDMXchywfBSdkMFygVl4hfCl0k7DPi
         WplnjEsSm+CrfwfPAu3HU8SHs+9jOjcVwX7+wb3K6qO50a8gdxSxVhDsoICKuB/PvrUK
         doakSllaLcub4mTaymvoVQA0D1AOsKkaQuqB71SWEQIeC5TFBts2TCBZxX3iwp0Rvyd6
         h5mw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:subject:from:to
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=ytpReebwo2lzT+OCWbYWs9tuPCS8pzYXWetK/fVlbsU=;
        fh=AG2fj59MGo0LPd7RILeArXRP9BGGeCOfT/bhjgPECOk=;
        b=VtoCig2jsNYlpHfOLS7xqL0iBngMbfysn1rk2NSo3zbjgowRN1ZC1+jlFBHsNQvQF4
         zy08ax7f5avgPeMOvPhfGjDvMtl4wxsebpCg+Ym5KFY9I4eyrhZj7/xetlLwAkmwEalS
         SigHJmwl/1M0v3BV5S8AgEhWb85BcH931rve69MZUzc63DZdB5I/XTYVE6w1IXbAyxSz
         ocneg2BrSFc8b/M01ADORarkzBSNvSn/neg4KAKQzT/XjKR8PAAG1sQgbpumaRdOyG+M
         UGTiyexhUuhcncEv20uA7qeamZRQwFBhKVpBRfa/cGyc1kamRbvS94r4kQiHpWrV3SrH
         zmBw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) smtp.mailfrom=elias.stahlberg@harrastenurkka.fi
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713593454; x=1714198254;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:subject:from:to:user-agent:mime-version:date
         :message-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ytpReebwo2lzT+OCWbYWs9tuPCS8pzYXWetK/fVlbsU=;
        b=vxAjCaRNXM4UeAn1R9ivZmjimH4+lxiFARDEgneTSI+as3oOXQlYGiXqbRWXL5z3l2
         uHLRtIbe4xjctCUF/s6AgsZiedFYjSJY8z9EQrONEjr3cCkuOWGzxuPGvBIp6WmLUAZi
         p/fH2pOdVf00gqwCb/fOrBcwj0jubdnZ1DZ4h4QNyQ2yCQCzp2Y8vCV+oesCENKus4Tv
         XcuMk7Tg0rY4ItQ7rE+gGkoDDiATK1vl+VmxPNzMcVSGrrIBzYCwMrvXgSl6HOHxt+x3
         KP3Lie7iGC9dmU5Hga6DYmE8tc2DYdQnFcmi+0QiD0U2ywy97Y4RtUJIxYO9ji/z4Zfb
         Je2A==
X-Forwarded-Encrypted: i=2; AJvYcCUgYEaI1JVIssEET99WiotJA7q19krnKFuP1OESWUSXyIwVptfss8f2R86NtnPDKd24nX11eJ3kUMeQaV/zE0NY9udZxsmK/k4z
X-Gm-Message-State: AOJu0YzUKPlWi1zOodA/a2I59ZI4Ou5q29nMoJFpc7UkTHmMGSSqZq5n
	FxoXvEtMuOxSRXMVNUYJAV6ENazWstX74bMDHifKltxHEosuPyCK2gC4FmdNX14=
X-Google-Smtp-Source: AGHT+IHPV9i6echevpL8ioBNgzFePeldhFlKntnMxMWuG/+FdFom+WhYvXL2YfA5nqtFlXQP+CQuEw==
X-Received: by 2002:a0c:e789:0:b0:69b:7c1e:ac02 with SMTP id x9-20020a0ce789000000b0069b7c1eac02mr4588422qvn.18.1713593454479;
        Fri, 19 Apr 2024 23:10:54 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:262d:b0:690:c124:c187 with SMTP id
 6a1803df08f44-6a05d771ff5ls23178166d6.1.-pod-prod-02-us; Fri, 19 Apr 2024
 23:10:53 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWI6rAn0DI4+qXlydWankzJn7fEKv9cyO2jTDjd6FeCDFGmz+wO4HekO+2vGV0VgZKQunOGzxCiVanTB29LQ5ZM1WeecrfNv6XQdV6M
X-Received: by 2002:a05:620a:621e:b0:78d:7546:762e with SMTP id ou30-20020a05620a621e00b0078d7546762emr4600776qkn.53.1713593453492;
        Fri, 19 Apr 2024 23:10:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1713593453; cv=none;
        d=google.com; s=arc-20160816;
        b=uU0dIY3NlwQ2Uo2oMXFjUhZ4QO4yKYTc4J2ZJsO1WuC++CWnXxB0idIfyHUh7GjzR+
         XzokUKQTVMV65/K4h3m7aV/SPCOxbm6vc7mtj9wHsiKzYY/GQxOVPUzNe2TvWbCbZSN9
         31O2reQ2xRrVONw7ETmLkICgj62NoGZblnOBdGU8lGOB7kOWhQzBl2u7/pq1C+7tqRA7
         S/zBEA25zwlhCu2AVuCYwxSF6keWlS0rcn9jSduTYZ/582CZRK0DjzFNk3YliMQe/b2d
         nYd9EI1s41DYWNTMBwRn+Syj6tIngfYs41F5qkJQTWOiuZ3Ors3w/BVqohbyn9RwfSzR
         GL2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:subject:from:to
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=fWzV5zraR9pY6N7ropD3vuzn4GR5BAe9o73IMsKGjAw=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=sc1WClFV2++nJ+2hOGMnjVSwJV+Em80zAfZL/gVyUbY/egZOZU/qmp7KGl27ODrA84
         S3BC0aL4wTW5k4/91gQ9eNhvwkBevC1Q4xxDj5t+Mkid5uiCr1LZZ2bmzByQbRWrovOe
         Ti/74EgwJozzv6BzzsMenOCZUX/PsWTkrCSHkPKYbJ3co/1LG0j0b7UnyvkHJbX04wEY
         yOEPzUqQKPrWbh+3zqcrTT0G22SqG3o6aixTqPzG8Plo6oOu+/VdE8h26lV9yZWobY7o
         GSi2UqV7MkUpKZXBtNj+yB/HYBrg42v39ybc6Du07EzxhWR1PsFuSmYgbH/IXU/pr8Xq
         01hQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) smtp.mailfrom=elias.stahlberg@harrastenurkka.fi
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id vy14-20020a05620a490e00b0078f072034b4si5408782qkn.539.2024.04.19.23.10.51
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Apr 2024 23:10:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) client-ip=185.218.88.66;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-664-_fsr2mYzPpWnhnc996YElA-1; Sat, 20 Apr 2024 02:10:47 -0400
X-MC-Unique: _fsr2mYzPpWnhnc996YElA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CF3FD800CAC
	for <blinux-list@gapps.redhat.com>; Sat, 20 Apr 2024 06:10:46 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id C88BC1121313; Sat, 20 Apr 2024 06:10:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 902811121306
	for <blinux-list@redhat.com>; Sat, 20 Apr 2024 06:10:46 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 086F18001B2
	for <blinux-list@redhat.com>; Sat, 20 Apr 2024 06:10:46 +0000 (UTC)
Received: from server.harrastenurkka.fi (server.harrastenurkka.fi
 [185.218.88.66]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-25-5hBqi1rFOp6lwaGO7gtnIw-1; Sat, 20 Apr 2024 02:10:38 -0400
X-MC-Unique: 5hBqi1rFOp6lwaGO7gtnIw-1
Received: from [192.168.1.20] (178-75-190-98.bb.dnainternet.fi [178.75.190.98])
	by server.harrastenurkka.fi (Postfix) with ESMTPSA id 3851F413F5
	for <blinux-list@redhat.com>; Sat, 20 Apr 2024 09:04:17 +0300 (EEST)
Message-ID: <ed94fea5-26ca-41f4-b7dc-6b090aea0778@harrastenurkka.fi>
Date: Sat, 20 Apr 2024 09:04:00 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: blinux-list@redhat.com
From: =?UTF-8?Q?=27Elias_St=C3=A5hlberg=27_via_blinux=2Dlist=40redhat=2Ecom?= <blinux-list@redhat.com>
Subject: writing yaml visually impaired
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: harrastenurkka.fi
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: elias.stahlberg@harrastenurkka.fi
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as
 permitted sender) smtp.mailfrom=elias.stahlberg@harrastenurkka.fi
X-Original-From: =?UTF-8?Q?Elias_St=C3=A5hlberg?= <elias.stahlberg@harrastenurkka.fi>
Reply-To: =?UTF-8?Q?Elias_St=C3=A5hlberg?= <elias.stahlberg@harrastenurkka.fi>
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

hi

Is there a solution for writing yaml for the visually impaired, e.g. 
docker, ansible and cubernetes use this configuration language which is 
very specific about layouts, is there a converter that would convert the 
basic configuration to yaml, for the completely blind
yaml's syntax is very difficult to internalize, is there a way to do this
solution to the problem


Elias

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

